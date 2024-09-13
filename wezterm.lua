-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font("DMMono Nerd Font")
config.font_size = 16.0
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.window_close_confirmation = "AlwaysPrompt"

config.inactive_pane_hsb = {
	saturation = 0.5,
	brightness = 0.5,
}
-- You can specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
-- and finally, return the configuration to wezterm
return config
