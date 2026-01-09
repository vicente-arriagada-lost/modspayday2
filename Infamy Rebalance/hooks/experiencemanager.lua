local hook_id = "ExperienceManager.get_max_prestige_xp_InfamyRebalance_post"

Hooks:PostHook(ExperienceManager, "get_max_prestige_xp", hook_id, function()
	if Application:digest_value(tweak_data.experience_manager.prestige_xp_max, false) then
		return 6000000
	end

	return 0
end)