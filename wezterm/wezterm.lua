-- initialize wezterm api
local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.window_background_opacity = 0.5
config.enable_wayland = false
config.enable_tab_bar = false

-- return config
return config
