local wezterm = require("wezterm")

local config = wezterm.config_builder()

--config.font = wezterm.font("MesloLGS Nerd Font Mono")
--config.font = wezterm.font("FiraCode Nerd Font Mono")
--config.font = wezterm.font("TerminessTTF Nerd Font Mono")
--config.font = wezterm.font("Iosevka Nerd Font Mono")
--config.font = wezterm.font("InconsolataLGC Nerd Font Mono")
config.font = wezterm.font("JetBrainsMonoNL Nerd Font Mono")
config.font_size = 16

config.enable_tab_bar = false

config.line_height = 0.9

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.80
config.macos_window_background_blur = 30
config.window_padding = {
    left = '24px',
    right = '24px',
    top = '24px',
    bottom = '8px'
}
-- config.colors = {
--     foreground = "#CBE0F0",
-- 	background = "#011423",
-- 	cursor_bg = "#47FF9C",
-- 	cursor_border = "#47FF9C",
-- 	cursor_fg = "#011423",
-- 	selection_bg = "#033259",
-- 	selection_fg = "#CBE0F0",
-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- }

config.color_scheme = 'Tokyo Night'
-- config.color_scheme = 'Gruvbox Dark (Gogh)'

config.max_fps = 120

return config
