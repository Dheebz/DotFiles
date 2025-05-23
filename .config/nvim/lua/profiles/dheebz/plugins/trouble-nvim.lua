-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Nice diagnostics list                                                 ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/trouble-nvim.lua    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  config = function()
    require("trouble").setup({})
  end,
  enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/trouble-nvim.lua
