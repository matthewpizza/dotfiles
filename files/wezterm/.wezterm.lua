-- https://wezterm.org/config/files.html#quick-start
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font 'Dank Mono'
config.font_size = 15
-- https://wezterm.org/config/font-shaping.html#advanced-font-shaping-options
config.harfbuzz_features = { 'liga=0' }
config.color_scheme = 'Night Owlish Light'

-- https://wezterm.org/config/keyboard-concepts.html?h=option+alt#layouts-with-an-altgr-key
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- https://wezterm.org/config/lua/config/quit_when_all_windows_are_closed.html
config.quit_when_all_windows_are_closed = false

-- https://wezterm.org/config/lua/config/window_close_confirmation.html
config.window_close_confirmation = 'NeverPrompt'

-- option+arrow moves forward/backward a word
-- https://github.com/zapman449/dotfiles/blob/master/wezterm/.wezterm.lua#L26-L37
config.keys = {
    {
        key="LeftArrow",
        mods="OPT",
        action=wezterm.action{SendString="\x1bb"}
    },
    {
        key="RightArrow",
        mods="OPT",
        action=wezterm.action{SendString="\x1bf"}
    },
}

return config
