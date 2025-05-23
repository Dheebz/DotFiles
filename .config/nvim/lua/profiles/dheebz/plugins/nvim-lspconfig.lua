-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Configure Neovim native LSP client                                    ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/nvim-lspconfig.lua  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
-- TODO: Make dynamic
return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = false,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/nvim-lspconfig.lua
