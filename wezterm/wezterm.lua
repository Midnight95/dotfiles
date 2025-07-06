-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- color scheme:
config.color_scheme = 'Gruvbox Dark (Gogh)'

-- opticacy
config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
config.enable_wayland = false
return config
