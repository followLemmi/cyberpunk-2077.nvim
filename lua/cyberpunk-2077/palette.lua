local M = {}

M.colors = {
  -- Base colors from Cyberpunk 2077 palette
  raisin_black = "#272932",
  blood_red = "#710000",
  rich_lemon = "#FDF500",
  keppel = "#1AC5B0",
  electric_blue = "#37EBF3",
  blushing_purple = "#9370DB",
  frostbite = "#E455AE",
  steel_pink = "#CB1DCD",
  pale_silver = "#D1C5C0",

  -- Extended colors for better contrast
  bg_dark = "#1a1b22",
  bg = "#272932",
  bg_light = "#363845",
  bg_lighter = "#454759",

  fg = "#D1C5C0",
  fg_dark = "#9a908c",
  fg_darker = "#6b6360",

  -- Semantic colors
  red = "#ff5555",
  red_dark = "#710000",
  yellow = "#FDF500",
  yellow_dark = "#b8b000",
  green = "#1AC5B0",
  green_bright = "#37EBF3",
  cyan = "#37EBF3",
  blue = "#9370DB",
  purple = "#CB1DCD",
  magenta = "#E455AE",
  orange = "#ff9e64",

  -- UI colors
  selection = "#454759",
  comment = "#6b6360",
  line_nr = "#6b6360",
  cursor_line = "#363845",
  visual = "#454759",
  search = "#FDF500",
  match_paren = "#37EBF3",

  -- Diagnostics
  error = "#ff5555",
  warning = "#FDF500",
  info = "#37EBF3",
  hint = "#1AC5B0",

  -- Git
  git_add = "#1AC5B0",
  git_change = "#FDF500",
  git_delete = "#ff5555",

  none = "NONE",
}

return M
