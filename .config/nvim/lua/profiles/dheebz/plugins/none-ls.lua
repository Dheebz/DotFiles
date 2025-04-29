-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  More maintained null-ls fork                                          ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/none-ls-nvim.lua    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Example sources (commented out — configure in LSP setup later)
				-- null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.diagnostics.shellcheck,
			},
		})
	end,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/none-ls-nvim.lua
