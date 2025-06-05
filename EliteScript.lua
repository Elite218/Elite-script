local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()

local Window = MacLib:Window({
    Title = "Elite Script",
    Subtitle = "Free | V1",
    Size = UDim2.fromOffset(818, 600),
    DragStyle = 1,
    DisabledWindowControls = {},
    ShowUserInfo = true,
    Keybind = Enum.KeyCode.LeftControl,
    AcrylicBlur = true,
})

local globalSettings = {
	UIBlurToggle = Window:GlobalSetting({
		Name = "UI Blur",
		Default = Window:GetAcrylicBlurState(),
		Callback = function(bool)
			Window:SetAcrylicBlurState(bool)
			Window:Notify({
				Title = Window.Settings.Title,
				Description = (bool and "Enabled" or "Disabled") .. " UI Blur",
				Lifetime = 5
			})
		end,
	}),
	NotificationToggler = Window:GlobalSetting({
		Name = "Notifications",
		Default = Window:GetNotificationsState(),
		Callback = function(bool)
			Window:SetNotificationsState(bool)
			Window:Notify({
				Title = Window.Settings.Title,
				Description = (bool and "Enabled" or "Disabled") .. " Notifications",
				Lifetime = 5
			})
		end,
	}),
	ShowUserInfo = Window:GlobalSetting({
		Name = "Show User Info",
		Default = Window:GetUserInfoState(),
		Callback = function(bool)
			Window:SetUserInfoState(bool)
			Window:Notify({
				Title = Window.Settings.Title,
				Description = (bool and "Showing" or "Redacted") .. " User Info",
				Lifetime = 5
			})
		end,
	})
}

local tabGroups = {
	TabGroup1 = Window:TabGroup()
}

local tabs = {
	Main = tabGroups.TabGroup1:Tab({ Name = "Home", Image = "rbxassetid://91151100858383" }),
    Player = tabGroups.TabGroup1:Tab({ Name = "Player", Image = "rbxassetid://9525534183" }),
    World = tabGroups.TabGroup1:Tab({ Name = "World", Image = "rbxassetid://11887653877" }),
	Settings = tabGroups.TabGroup1:Tab({ Name = "Settings", Image = "rbxassetid://10734950309" })
}

local sections = {
	MainSection1 = tabs.Main:Section({ Side = "Left" }),
	MainSection2 = tabs.Main:Section({ Side = "Right" }),
    PlayerSection1 = tabs.Player:Section({ Side = "Left" }),
    PlayerSection2 = tabs.Player:Section({ Side = "Right" }),
    WorldSection1 = tabs.World:Section({ Side = "Left" }),
}

sections.MainSection1:Header({
	Name = "Basic"
})

sections.MainSection2:Header({
	Name = "Default"
})

sections.PlayerSection1:Header({
	Name = "Player"
})

sections.PlayerSection2:Header({
	Name = "Sliders"
})

sections.WorldSection1:Header({
	Name = "World"
})

-- Home Tab
sections.MainSection1:Button({
	Name = "Side to Side",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_11l7Y131YqJjZ31QmV5L8pI23V02b3191sEg26E75472Wl78Vi8870jRv5txZyL1.lua.txt"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Side to Side",
				Lifetime = 5
			})
    end,
})

sections.MainSection1:Button({
	Name = "SystemBroken",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script'))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "SystemBroken",
				Lifetime = 5
			})
    end,
})

sections.MainSection1:Button({
	Name = "Custom Emote's",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/0UKFUtm4"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Loaded Custom Emote's",
				Lifetime = 5
			})
    end,
})

sections.MainSection1:Button({
	Name = "Rewind",
	Callback = function()
        loadstring(game:HttpGet("https://codeberg.org/evilionx3/AK-ADMIN-SRC/raw/branch/main/rewind.txt"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Rewind Hold C",
				Lifetime = 5
			})
    end,
})

-- Default Tab
sections.MainSection2:Button({
	Name = "Default Emote's",
	Callback = function()
        print("Load Default emote's By Elite Script")loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Loaded Default Emote's",
				Lifetime = 5
			})
    end,
})


-- Player Tab
sections.PlayerSection1:Button({
	Name = "Anti Afk",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/2cVdLZM6"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Anti Afk",
				Lifetime = 5
			})
    end,
})

sections.PlayerSection1:Button({
	Name = "Headless",
	Callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Headless",
				Lifetime = 5
			})
    end,
})

sections.PlayerSection1:Button({
	Name = "Jerk Off Tool",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Jerk Off Tool",
				Lifetime = 5
			})
    end,
})

sections.PlayerSection1:Button({
	Name = "Respawn",
	Callback = function()
        loadstring(game:HttpGet("https://codeberg.org/evilionx3/AK-ADMIN-SRC/raw/branch/main/fastoof.txt"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Respawing",
				Lifetime = 5
			})
    end,
})

--Right side
sections.PlayerSection2:Slider({
	Name = "Walkspeed",
	Default = 16,
	Minimum = 0,
	Maximum = 100,
	DisplayMethod = "Percent",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
}, "WalkspeedSlider")

sections.PlayerSection2:Button({
	Name = "Reset WalkSpeed",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Reseted Walkspeed",
				Lifetime = 5
			})
    end,
})

sections.PlayerSection2:Slider({
	Name = "JumpPower",
	Default = 50,
	Minimum = 0,
	Maximum = 300,
	DisplayMethod = "Percent",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
}, "JumpPowerSlider")

sections.PlayerSection2:Button({
	Name = "Reset JumpPower",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Reseted JumpPower",
				Lifetime = 5
			})
    end,
})

sections.PlayerSection2:Slider({
	Name = "Pov",
	Default = 70,
	Minimum = 0,
	Maximum = 400,
	DisplayMethod = "Percent",
	Callback = function(Value)
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local UserInputService = game:GetService("UserInputService")

        local player = Players.LocalPlayer
        local camera = workspace.CurrentCamera

        camera.FieldOfView = Value
	end,
}, "PovSlider")

sections.PlayerSection2:Button({
	Name = "Reset Pov",
	Callback = function()
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local UserInputService = game:GetService("UserInputService")

        local player = Players.LocalPlayer
        local camera = workspace.CurrentCamera

        camera.FieldOfView = 70
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Reseted Pov",
				Lifetime = 5
			})
    end,
})

-- world tab
sections.WorldSection1:Button({
	Name = "Big Baseplate",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/kFxBw0Th"))()
        Window:Notify({
				Title = Window.Settings.Title,
				Description = "Big Baseplate",
				Lifetime = 5
			})
    end,
})

MacLib:SetFolder("Maclib")
tabs.Settings:InsertConfigSection("Left")

Window.onUnloaded(function()
	print("Unloaded!")
end)

tabs.Main:Select()
MacLib:LoadAutoLoadConfig()
