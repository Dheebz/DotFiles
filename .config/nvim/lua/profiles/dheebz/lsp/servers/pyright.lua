-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Python LSP Setup (pyright)                                            ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/lsp/servers/pyright.lua     ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	enabled = true,
	setup = function(capabilities)
		require("lspconfig").pyright.setup({
			capabilities = capabilities,
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "basic", -- can change to "strict" if you want stricter typing
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
					},
				},
			},
		})
	end,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/lsp/servers/pyright.lua
