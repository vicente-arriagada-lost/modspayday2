local mod_name = "stealth all heists"
local loaded = rawget(_G, mod_name)
local c = loaded or rawset(_G, mod_name, {
	orig_loud_heists = {
        chill_combat = false                -- loud safehouse
    },
    event_behaviours = {
        election_day_3_skip1 = {            -- disable alarm
            [102714] = {
                var = "enabled",
                data = false
            }
        },
        glace = {                           -- stop spawn chopper and assault hud on green bridge
            [138970] = {
                var = "enabled",
                data = false
            }
        },
        pbr = {                             -- stop spawn when starting heist in beneath the mountain 100473
            [100596] = {
                var = "enabled",
                data = false
            },
            [100471] = {
                var = "enabled",
                data = false
            },
            [101632] = {
                var = "enabled",
                data = false
            },
            [101650] = {
                var = "enabled",
                data = false
            },
            [130518] = {
                var = "enabled",
                data = false
            }
        },
        bph = {                             -- make locke continue on stop
            [101557] = {
                var = "on_executed",
                data = {
                    delay = 10,
                    id = 101413
                }
            }
        }
    },
    alert_type_table = {  -- disable alert on explosions, for counterfeit e.g
        ["footstep"] = true,
        ["vo_ntl"] = true,
        ["vo_cbt"] = true,
        ["vo_intimidate"] = true,
        ["vo_distress"] = true,
        ["bullet"] = true,
        ["aggression"] = true,
        ["explosion"] = false
    },
    allowed_spawns = {
        ["security"] = true,
        ["cop"] = true,
        ["gangster"] = true,
        ["civ_male"] = true,
        ["civ_female"] = true,
        ["sniper"] = true,
        ["teamAI4"] = true
    },
    blacklisted_dialogue_words = {
        "police", "swat", "cops", "assault", "hell", "hurry"
    },
    pager_data = {
        des = 7, -- henry rock
        election_day_3_skip1 = 6 -- election day 3
    }
}) and _G[mod_name]

if not loaded then
    function c:is_alert(alerting_unit)
        local unit_damage = alive(alerting_unit) and alerting_unit:character_damage()
        local unit_tweak = unit_damage and unit_damage._char_tweak

        if unit_tweak and (unit_damage._invulnerable or unit_tweak.is_escort or unit_tweak.permanently_invulnerable or unit_tweak.immortal) then
            return true
        end
    end
end

if RequiredScript == "lib/managers/mission/elementwhisperstate" then -- disable loud events and keeps stealth functionality
    local orig_on_executed = ElementWhisperState.on_executed
    function ElementWhisperState:on_executed(...)
        if not c.orig_loud_heists[managers.job:current_level_id()] then
            return orig_on_executed(self, ...)
        end

        managers.groupai:state():set_stealth_hud_disabled(false)
        managers.groupai:state():set_whisper_mode(true)
    end
elseif RequiredScript == "lib/managers/group_ai_states/groupaistatebase" then -- prevent alarms managed in table above
    local orig_propagate_alert = GroupAIStateBase.propagate_alert
    function GroupAIStateBase:propagate_alert(alert_data, ...)
        local alert_type = alert_data[1]
        local listeners_by_type = self._alert_listeners[alert_type]

        if listeners_by_type then
            if c.orig_loud_heists[managers.job:current_level_id()] then
                if c:is_alert(alert_data[5]) then
                    return
                end

                if c.alert_type_table[alert_type] then
                    orig_propagate_alert(self, alert_data, ...)
                end
            else
                orig_propagate_alert(self, alert_data, ...)
            end
        end
    end

	local orig_on_criminal_suspicion_progress = GroupAIStateBase.on_criminal_suspicion_progress
    function GroupAIStateBase:on_criminal_suspicion_progress(u_suspect, u_observer, status) -- remove suspicion when ai can't be damaged
        if c.orig_loud_heists[managers.job:current_level_id()] then
            if c:is_alert(u_observer) or not self._ai_enabled or not self._whisper_mode or self._stealth_hud_disabled then
                return
            end
        end
        orig_on_criminal_suspicion_progress(self, u_suspect, u_observer, status)
    end
elseif RequiredScript == "lib/units/enemies/cop/copmovement" then   -- disable ai calling police if they are not able to get damaged
    local orig_anim_clbk_police_called = CopMovement.anim_clbk_police_called
    function CopMovement:anim_clbk_police_called(unit)
        if c.orig_loud_heists[managers.job:current_level_id()] and Network:is_server() and c:is_alert(unit) then
            self:set_cool(true)
            self:play_redirect("idle")
            self:_change_stance(1)
            return
        end
        orig_anim_clbk_police_called(self, unit)
        managers.groupai:state():set_whisper_mode(false)
    end
elseif RequiredScript == "lib/managers/mission/elementaiglobalevent" then -- Don't call police immediatly on loud heists
    local orig_on_executed = ElementAiGlobalEvent.on_executed
    function ElementAiGlobalEvent:on_executed(...)
        if not c.orig_loud_heists[managers.job:current_level_id()] then
            orig_on_executed(self, ...)
        end
    end
elseif RequiredScript == "lib/tweak_data/levelstweakdata" then -- ghost bonus on heists
    local orig_init = LevelsTweakData.init
    function LevelsTweakData:init(...)
        orig_init(self, ...)

        for index, level_id in pairs(self._level_index) do
            local level = self[level_id]

            if level and not level.ghost_bonus and c.orig_loud_heists[level_id] == nil then
                c.orig_loud_heists[level_id] = true
                self[level_id].ghost_bonus = 0.15
            end
		end
    end
elseif RequiredScript == "lib/managers/jobmanager" then -- ghost icon on heists
    local orig_is_job_ghostable = JobManager.is_job_ghostable
    function JobManager:is_job_ghostable()
        if c.orig_loud_heists[self:current_level_id()] then
            return true
        end
        return orig_is_job_ghostable(self)
    end

    local orig_is_job_stage_ghostable = JobManager.is_job_stage_ghostable
    function JobManager:is_job_stage_ghostable()
        if c.orig_loud_heists[self:current_level_id()] then
            return true
        end
        return orig_is_job_stage_ghostable(self)
    end
elseif RequiredScript == "lib/units/interactions/interactionext" then -- change max pager for all players
    local localPagersUsed = 0
    local orig_at_interact_start = IntimitateInteractionExt._at_interact_start
    function IntimitateInteractionExt:_at_interact_start(player, ...)
        local level_id = managers.job:current_level_id()

        if c.orig_loud_heists[level_id] and managers.groupai:state():whisper_mode() and self.tweak_data == "corpse_alarm_pager" and Network:is_server() and not self._in_progress then 
            local numPagers, bluffChance, tableValue = c.pager_data[level_id] or 4, {}

            if not player:base().num_answered then
                player:base().num_answered = 1
            end

            if player:base().num_answered <= numPagers then
                tableValue = 1
            else
                tableValue = 0
            end

            for i = 0, ( numPagers - 1), 1 do
                table.insert(bluffChance, tableValue)
            end
            table.insert(bluffChance, 0)

            tweak_data.player.alarm_pager["bluff_success_chance"] = bluffChance
            tweak_data.player.alarm_pager["bluff_success_chance_w_skill"] = bluffChance

            if player:base().is_local_player then
                localPagersUsed = localPagersUsed + 1
            end
        end
        orig_at_interact_start(self, player, ...)
    end
elseif RequiredScript == "lib/managers/mission/elementspawnenemydummy" then  -- Stop scripted spawns from table above
    local function is_available()
        return
    end

    local orig_produce = ElementSpawnEnemyDummy.produce
    function ElementSpawnEnemyDummy:produce(params, ...)
        local unit = orig_produce(self, params, ...)

        if c.orig_loud_heists[managers.job:current_level_id()] then
            local unit_base = unit:base()
            local unit_tweak = unit_base._char_tweak.access

            if not managers.groupai:state():whisper_mode() or unit_tweak and c.allowed_spawns[unit_tweak] then
                return unit
            elseif alive(unit) then
                unit:brain():set_active(false)
                unit:brain().is_available_for_assignment = is_available
                unit:brain().set_followup_objective = is_available
                unit_base:set_slot(unit, 0)
                return unit
            end
        else
            return unit
        end
    end
elseif RequiredScript == "lib/managers/mission/elementdialogue" then -- Stop some scripted police dialogue 
    local function match_dialogue(str)
        for i = 1, #c.blacklisted_dialogue_words do
            return str:lower():match(c.blacklisted_dialogue_words[i])
        end
    end

    local orig_queue_dialog = DialogManager.queue_dialog
    function DialogManager:queue_dialog(id, ...)
        if c.orig_loud_heists[managers.job:current_level_id()] and managers.localization:exists(id) and match_dialogue(managers.localization:text(id)) then
            return
        end
        return orig_queue_dialog(self, id, ...)
    end
elseif RequiredScript == "lib/network/base/networkpeer" then -- prevent client trigger events for host
    local orig_send = NetworkPeer.send
    function NetworkPeer:send(func_name, ...)
        if func_name ==  "to_server_mission_element_trigger" and c.orig_loud_heists[managers.job:current_level_id()] then
            return
        end
        orig_send(self, func_name, ...)
    end
elseif RequiredScript == "lib/managers/gameplaycentralmanager" then -- run event on starting heist
    local orig_start_heist_timer = GamePlayCentralManager.start_heist_timer
	function GamePlayCentralManager:start_heist_timer(...)
		orig_start_heist_timer(self, ...)
		
        local level_id = managers.job:current_level_id()

        if not c.orig_loud_heists[level_id] then
            return
        end

        local player = managers.player:player_unit()

        if not alive(player) then
            return
        end

        if level_id == "bph" then -- hell's island door
            managers.mission:script("default"):element(101433):on_executed(player)
        end
	end
elseif RequiredScript == "lib/managers/mission/elementexplosion" then   -- disable explosion dmg/alert
    local orig_on_executed = ElementExplosion.on_executed
    function ElementExplosion:on_executed(...)
        if not c.orig_loud_heists[managers.job:current_level_id()] then
            orig_on_executed(self, ...)
        end
    end
elseif RequiredScript == "core/lib/managers/mission/coremissionscriptelement" then -- change event behaviour
    local orig_init = MissionScriptElement.init
    function MissionScriptElement:init(...)
        orig_init(self, ...)

        local level_id = managers.job:current_level_id()
        local events = c.event_behaviours
        local id_data = events[level_id] and events[level_id][self._id]

        if id_data then
            local var = id_data.var
            local data = id_data.data

            if self._values[var] then
                if type(self._values[var]) == "table" then
                    table.insert(self._values[var], data)
                else
                    self._values[var] = data
                end
            else
                self._values[var] = type(data) == "table" and {data} or data
            end
        end
    end
end