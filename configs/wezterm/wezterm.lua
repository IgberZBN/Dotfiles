local wezterm = require("wezterm")

local c = {
	bright3 = "#f6c2a5",
	bright2 = "#ea9a7d",
	bright1 = "#e16a5e",
	normal = "#d22f32",
	dark1 = "#b1274e",
	dark2 = "#931b46",
	dark3 = "#631033",
	dark4 = "#42001f",
	background = "#101010",
}

local config = {}

config.default_prog = { "/usr/bin/zsh" }

config.font = wezterm.font("FiraCode")
config.font_size = 10
config.line_height = 1.0

config.default_cursor_style = "BlinkingUnderline"

config.enable_wayland = true

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = true
config.window_padding = {
	left = 25,
	right = 25,
	top = 25,
	bottom = 25,
}
config.inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 }

config.disable_default_key_bindings = true
config.keys = {
	{
		key = [[\]],
		mods = "CTRL|ALT",
		action = wezterm.action({
			SplitHorizontal = { domain = "CurrentPaneDomain" },
		}),
	},
	{
		key = [[\]],
		mods = "CTRL",
		action = wezterm.action({
			SplitVertical = { domain = "CurrentPaneDomain" },
		}),
	},
	{
		key = "q",
		mods = "CTRL",
		action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
	},
	{
		key = "LeftArrow",
		mods = "CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Left" }),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Right" }),
	},
	{
		key = "UpArrow",
		mods = "CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Up" }),
	},
	{
		key = "DownArrow",
		mods = "CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Down" }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
	},
	{ -- browser-like bindings for tabbing
		key = "t",
		mods = "CTRL",
		action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
	},
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action({ ActivateTabRelative = 1 }),
	},
	{
		key = "Tab",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ ActivateTabRelative = -1 }),
	}, -- standard copy/paste bindings
	{
		key = "x",
		mods = "CTRL",
		action = "ActivateCopyMode",
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ PasteFrom = "Clipboard" }),
	},
	{
		key = "c",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
	},
}

config.window_close_confirmation = "NeverPrompt"

config.colors = {
	background = c.background,
	foreground = c.bright2,
	cursor_bg = c.bright1,
	cursor_border = c.bright1,
	split = c.bright1,
	ansi = {
		c.dark4,
		c.dark1,
		c.bright1,
		c.bright3,
		c.dark3,
		c.normal,
		c.dark1,
		c.bright3,
	},
	brights = {
		c.dark3,
		c.normal,
		c.bright2,
		c.bright1,
		c.normal,
		c.normal,
		c.normal,
		c.bright3,
	},
}

config.window_background_opacity = 0.9

return config
