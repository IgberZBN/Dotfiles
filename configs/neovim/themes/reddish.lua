-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}

-- color palette
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
  test3 = "#0000ff",
}

-- UI
M.base_30 = {
  white = c.normal,
  darker_black = "#060809",
  black = c.background, --  nvim bg
  black2 = "#141617",
  lighter_black = "#121415",
  -- lighter_black = "#fa0000",
  one_bg = "#161819",
  -- one_bg = "#161819",
  one_bg2 = c.dark4,
  one_bg3 = "#27292a",
  -- one_bg3 = "#27292a",
  grey = "#343637",
  grey_fg = "#3e4041",
  grey_fg2 = "#484a4b",
  light_grey = "#505253",
  red = "#DF5B61",
  baby_pink = "#EE6A70",
  pink = c.bright1,
  line = c.bright1, -- for lines like vertsplit
  green = c.dark2,
  vibrant_green = "#81c19b",
  nord_blue = c.normal,
  blue = c.bright1,
  yellow = c.bright3,
  sun = "#f6dc95",
  purple = c.normal,
  dark_purple = c.dark2,
  teal = c.dark1,
  orange = c.dark2,
  cyan = c.dark4,
  statusline_bg = "#101213",
  lightbg = "#1d1f20",
  pmenu_bg = "#78B892",
  folder_bg = c.bright1,
}

M.base_16 = {
  base00 = c.background,
  base01 = c.dark4,
  base02 = c.dark4,
  base03 = c.bright2,
  base04 = c.test3,
  base05 = c.normal,
  base06 = c.test3,
  base07 = c.test1,
  base08 = c.bright2,
  base09 = c.bright3,
  base0A = c.normal,
  base0B = c.bright2,
  base0C = c.bright1,
  base0D = c.bright3,
  base0E = c.normal,
  base0F = c.bright1,
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "abc")

return M
