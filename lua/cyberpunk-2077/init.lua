local M = {}

M.config = {
  transparent = false,
  italic_comments = true,
  hide_inactive_statusline = false,
  dim_inactive = false,
  lualine_bold = true,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "cyberpunk-2077"

  local palette = require("cyberpunk-2077.palette")
  local highlights = require("cyberpunk-2077.highlights")

  local colors = palette.colors
  local hl_groups = highlights.setup(colors)

  -- Apply transparent background if configured
  if M.config.transparent then
    hl_groups.Normal.bg = nil
    hl_groups.NormalFloat.bg = nil
    hl_groups.NormalNC.bg = nil
    hl_groups.SignColumn.bg = nil
    hl_groups.EndOfBuffer.bg = nil
  end

  -- Apply italic comments if configured
  if not M.config.italic_comments then
    hl_groups.Comment.italic = nil
    hl_groups["@comment"].italic = nil
  end

  -- Apply dim inactive if configured
  if M.config.dim_inactive then
    hl_groups.NormalNC = { fg = colors.fg_dark, bg = colors.bg_dark }
  end

  -- Set all highlight groups
  for group, opts in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

-- Lualine theme
function M.lualine()
  local colors = require("cyberpunk-2077.palette").colors
  local bold = M.config.lualine_bold

  return {
    normal = {
      a = { fg = colors.bg, bg = colors.electric_blue, bold = bold },
      b = { fg = colors.electric_blue, bg = colors.bg_light },
      c = { fg = colors.fg, bg = colors.bg_dark },
    },
    insert = {
      a = { fg = colors.bg, bg = colors.keppel, bold = bold },
      b = { fg = colors.keppel, bg = colors.bg_light },
      c = { fg = colors.fg, bg = colors.bg_dark },
    },
    visual = {
      a = { fg = colors.bg, bg = colors.frostbite, bold = bold },
      b = { fg = colors.frostbite, bg = colors.bg_light },
      c = { fg = colors.fg, bg = colors.bg_dark },
    },
    replace = {
      a = { fg = colors.bg, bg = colors.red, bold = bold },
      b = { fg = colors.red, bg = colors.bg_light },
      c = { fg = colors.fg, bg = colors.bg_dark },
    },
    command = {
      a = { fg = colors.bg, bg = colors.yellow, bold = bold },
      b = { fg = colors.yellow, bg = colors.bg_light },
      c = { fg = colors.fg, bg = colors.bg_dark },
    },
    inactive = {
      a = { fg = colors.fg_dark, bg = colors.bg_dark },
      b = { fg = colors.fg_dark, bg = colors.bg_dark },
      c = { fg = colors.fg_dark, bg = colors.bg_dark },
    },
  }
end

return M
