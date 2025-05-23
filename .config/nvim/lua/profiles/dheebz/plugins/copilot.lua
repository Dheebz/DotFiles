-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  GitHub Copilot Integration Plugin                                      ┃
-- ┃  File: ~/.config/nvim/lua/plugins/github_copilot.lua                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
return {
  {
    "github/copilot.vim",
    enabled = true,
    event = "InsertEnter", -- Load on entering insert mode
    config = function()
      vim.g.copilot_no_tab_map = true
    end,
  },
}

-- End of File: ~/.config/nvim/lua/plugins/github_copilot.lua
