-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  TokyoNight Plugin Configuration                                      ┃
-- ┃  Description: Configuration for the "tokyonight.nvim" plugin,         ┃
-- ┃  setting up the colorscheme and related options for Neovim.           ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/tokyonight.lua      ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
  "folke/tokyonight.nvim",
  enabled = false, -- Toggle on/off
  lazy = false,   -- Load immediately (since it's your colorscheme)
  priority = 1000, -- High priority to make sure it's loaded first
  config = function()
    require("tokyonight").setup({
      style = "night",     -- Options: "storm", "moon", "night", "day"
      transparent = true,  -- If you want your background transparent
      terminal_colors = true, -- Apply colors to terminal as well
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = "dark", -- Style for sidebars (e.g. NvimTree)
        floats = "dark", -- Style for floating windows
      },
    })

    vim.cmd([[colorscheme tokyonight]]) -- Set it as your active colorscheme
  end,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/tokyonight.lua
