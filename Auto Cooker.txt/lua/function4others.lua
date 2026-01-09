_G.CookFaster = _G.CookFaster or {}
CookFaster.options_menu = "AutoCooker_menu"
CookFaster.ModPath = ModPath
CookFaster.SaveFile = CookFaster.SaveFile or SavePath .. "AutoCooker.txt"
CookFaster.ModOptions = CookFaster.ModPath .. "menus/modoptions.txt"
CookFaster.settings = CookFaster.settings or {}

function CookFaster:Reset()
    self.settings = {
        Delay = 0.1,
        Bile_Coming = true,
    }
    self:Save()
end

function CookFaster:Load()
    local file = io.open(self.SaveFile, "r")
    if file then
        for key, value in pairs(json.decode(file:read("*all"))) do
            self.settings[key] = value
        end
        file:close()
    else
        self:Reset()
    end
end

function CookFaster:Save()
    local file = io.open(self.SaveFile, "w+")
    if file then
        file:write(json.encode(self.settings))
        file:close()
    end
end

CookFaster:Load()

Hooks:Add("LocalizationManagerPostInit", "AutoCooker_loc", function(loc)
    LocalizationManager:add_localized_strings({
        ["AutoCooker_menu_title"] = "Auto Cooker",
        ["AutoCooker_menu_desc"] = "",
        ["AutoCooker_menu_Delay_title"] = "Time for Next Thing",
        ["AutoCooker_menu_Delay_desc"] = "",
        ["AutoCooker_menu_Bile_Coming_title"] = "Faster Bile",
        ["AutoCooker_menu_Bile_Coming_desc"] = "",
    })
end)

Hooks:Add("MenuManagerSetupCustomMenus", "AutoCookerOptions", function( menu_manager, nodes )
    MenuHelper:NewMenu( CookFaster.options_menu )
end)

Hooks:Add("MenuManagerPopulateCustomMenus", "AutoCookerOptions", function( menu_manager, nodes )
    MenuCallbackHandler.AutoCooker_menu_Delay_callback = function(self, item)
        CookFaster.settings.Delay = tonumber(item:value())
        CookFaster:Save()
    end
    MenuHelper:AddSlider({
        id = "AutoCooker_menu_Delay_callback",
        title = "AutoCooker_menu_Delay_title",
        callback = "AutoCooker_menu_Delay_callback",
        value = CookFaster.settings.Delay,
        min = 0.1,
        max = 45,
        step = 0.1,
        show_value = true,
        menu_id = CookFaster.options_menu,  
    })
    MenuCallbackHandler.AutoCooker_menu_Bile_Coming_callback = function(self, item)
        CookFaster.settings.Bile_Coming = item:value() == "on" and true or false
        CookFaster:Save()
    end
    MenuHelper:AddToggle({
        id = "AutoCooker_menu_Bile_Coming_callback",
        title = "AutoCooker_menu_Bile_Coming_title",
        callback = "AutoCooker_menu_Bile_Coming_callback",
        value = CookFaster.settings.Bile_Coming,
        menu_id = CookFaster.options_menu,  
    })
end)

Hooks:Add("MenuManagerBuildCustomMenus", "AutoCookerOptions", function(menu_manager, nodes)
    nodes[CookFaster.options_menu] = MenuHelper:BuildMenu( CookFaster.options_menu )
    MenuHelper:AddMenuItem(nodes["blt_options"], CookFaster.options_menu, "AutoCooker_menu_title", "AutoCooker_menu_desc")
end)
