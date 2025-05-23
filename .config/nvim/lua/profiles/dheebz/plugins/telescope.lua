-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Telescope Plugin Configuration                                       ┃
-- ┃  Description: Configuration for the "nvim-telescope/telescope.nvim"   ┃
-- ┃  plugin, providing fuzzy finding and more for Neovim.                 ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/telescope.lua       ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"nvim-telescope/telescope.nvim",
	enabled = true, -- Your toggle flag
	event = "VeryLazy", -- Lazy-load on startup idle
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required dependency
		"nvim-tree/nvim-web-devicons", -- Icons for file previews
		"nvim-telescope/telescope-fzf-native.nvim", -- Optional: fast fuzzy search
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				prompt_prefix = "🔍 ", -- Customize the prompt symbol
				selection_caret = "➤ ", -- Cursor indicator in the results list
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = { preview_width = 0.6 },
				},
				mappings = {
					i = {
						["<Esc>"] = actions.close, -- Close on escape in insert mode
					},
				},
				file_ignore_patterns = { -- Ignore certain file patterns
					".git/",
					".gitignore",
					"node_modules/",
					"%.lock",
					"__pycache__/",
				},
				vimgrep_arguments = { -- Arguments for grep
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
			},
			pickers = {
				find_files = {
					hidden = true, -- Include dotfiles
				},
			},
		})

		-- Optional: Load fzf-native if you have it built
		pcall(telescope.load_extension, "fzf")
	end,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/telescope.lua
