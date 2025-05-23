-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Treesitter Configuration                                             ┃
-- ┃  Syntax highlighting, indenting, and parsing                         ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/treesitter.lua     ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"bash",
				"json",
				"yaml",
				"toml",
				"markdown",
				"vim",
				"regex",
				"javascript",
				"typescript",
				"html",
				"css",
				"python",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/treesitter.lua
