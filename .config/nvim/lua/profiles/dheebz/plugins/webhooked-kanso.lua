-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  KansoNvim Plugin Configuration                                         ┃
-- ┃  Description: Configuration for the "KansoNvim/kanso.nvim" plugin,     ┃
-- ┃  applying a minimalist aesthetic colorscheme for Neovim.               ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/kanso.lua            ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
  "webhooked/kanso.nvim",
  enabled = true,  -- Toggle on/off
  lazy = false,    -- Load immediately if it's your colorscheme
  priority = 1000, -- High priority for immediate colorscheme load
  config = function()
    require("kanso").setup({
      transparent = true,     -- Optional transparency
      italic_comments = true, -- Minimalist with subtle emphasis
      lualine = {
        theme = "kanso",      -- Optional integration with lualine
      },
    })
    vim.cmd("colorscheme kanso-ink") -- Set the colorscheme
  end,

}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/kanso.lua
