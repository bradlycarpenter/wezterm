-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Visual
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14.0
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.window_close_confirmation = "AlwaysPrompt"
config.hide_tab_bar_if_only_one_tab = true

-- timeout_milliseconds defaults to 1000 and can be omitted
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
	{
		key = "a",
		mods = "LEADER|CTRL",
		action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }),
	},
}
-- and finally, return the configuration to wezterm
return config
