# Cyberpunk 2077 Theme for Neovim

A dark Neovim colorscheme inspired by the Cyberpunk 2077 color palette.

This theme was fully created by [Claude](https://claude.ai), Anthropic's AI assistant.

## Screenshots
![](./screenshots/code-example.png) 
![](./screenshots/telescope-example.png)

## Color Palette

| Color | Hex | Preview | Usage |
|-------|-----|---------|-------|
| Raisin Black | `#272932` | ![#272932](https://img.shields.io/badge/-%23272932-272932?style=flat-square) | Background |
| Blood Red | `#710000` | ![#710000](https://img.shields.io/badge/-%23710000-710000?style=flat-square) | Dark red accents |
| Rich Lemon | `#FDF500` | ![#FDF500](https://img.shields.io/badge/-%23FDF500-FDF500?style=flat-square) | Strings, warnings |
| Keppel | `#1AC5B0` | ![#1AC5B0](https://img.shields.io/badge/-%231AC5B0-1AC5B0?style=flat-square) | Functions |
| Electric Blue | `#37EBF3` | ![#37EBF3](https://img.shields.io/badge/-%2337EBF3-37EBF3?style=flat-square) | Keywords, UI elements |
| Blushing Purple | `#9370DB` | ![#9370DB](https://img.shields.io/badge/-%239370DB-9370DB?style=flat-square) | Types |
| Frostbite | `#E455AE` | ![#E455AE](https://img.shields.io/badge/-%23E455AE-E455AE?style=flat-square) | Constants, operators |
| Steel Pink | `#CB1DCD` | ![#CB1DCD](https://img.shields.io/badge/-%23CB1DCD-CB1DCD?style=flat-square) | Keywords |
| Pale Silver | `#D1C5C0` | ![#D1C5C0](https://img.shields.io/badge/-%23D1C5C0-D1C5C0?style=flat-square) | Foreground text |

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "followLemmi/cyberpunk-2077.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberpunk-2077").setup({
      -- your configuration here
    })
    vim.cmd.colorscheme("cyberpunk-2077")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "followLemmi/cyberpunk-2077.nvim",
  config = function()
    require("cyberpunk-2077").setup()
    vim.cmd.colorscheme("cyberpunk-2077")
  end,
}
```

## Configuration

```lua
require("cyberpunk-2077").setup({
  transparent = false,       -- Enable transparent background
  italic_comments = true,    -- Make comments italic
  dim_inactive = false,      -- Dim inactive windows
  lualine_bold = true,       -- Bold mode indicator in lualine
})

vim.cmd.colorscheme("cyberpunk-2077")
```

## Lualine Integration

```lua
require("lualine").setup({
  options = {
    theme = require("cyberpunk-2077").lualine(),
  },
})
```

## Supported Plugins

- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim) (picker, explorer)

## License

MIT
