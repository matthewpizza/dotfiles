-- https://wezterm.org/config/files.html#quick-start
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font 'Dank Mono'
config.font_size = 15
config.color_scheme = 'Night Owlish Light'

-- https://wezterm.org/config/keyboard-concepts.html?h=option+alt#layouts-with-an-altgr-key
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- https://wezterm.org/config/lua/config/quit_when_all_windows_are_closed.html
config.quit_when_all_windows_are_closed = false

return config
