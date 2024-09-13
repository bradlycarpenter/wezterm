-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Visual
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font("DMMono Nerd Font")
config.font_size = 16.0
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.window_close_confirmation = "AlwaysPrompt"

-- and finally, return the configuration to wezterm
return config
