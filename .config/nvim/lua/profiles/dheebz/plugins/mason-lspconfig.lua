-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Mason LSP Config + Auto-Wire Servers (Profile Specific)             ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/mason-lspconfig.lua ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    mason.setup()


    -- Define server-specific settings
    local server_settings = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      },
      pyright = {},
    }

    -- Setup all installed servers manually
    for _, server_name in ipairs(mason_lspconfig.get_installed_servers()) do
      local opts = server_settings[server_name] or {}
      lspconfig[server_name].setup(opts)
    end
  end,
  enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/mason-lspconfig.lua
