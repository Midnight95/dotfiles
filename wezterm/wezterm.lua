-- initialize wezterm api
local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.window_background_opacity = 0.8
config.enable_wayland = false
config.enable_tab_bar = false
config.font = wezterm.font 'Comic Code'

-- return config
return config
