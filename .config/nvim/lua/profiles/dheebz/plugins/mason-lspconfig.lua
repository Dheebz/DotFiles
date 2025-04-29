-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Mason LSP Config + Auto-Wire Servers (Profile Specific)               ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/mason-lspconfig.lua   ┃
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

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
			},
			automatic_installation = true,
		})

		-- Auto-attach every server
		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({})
			end,
			-- Optional: Specific server customizations
			["lua_ls"] = function()
				lspconfig.lua_ls.setup({
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				})
			end,
			-- You can add more server-specific configs here later too!
		})
	end,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/mason-lspconfig.lua
