-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Neo-tree Plugin Configuration                                        ┃
-- ┃  Description: Configuration for the "nvim-neo-tree/neo-tree.nvim"     ┃
-- ┃  plugin, providing a file explorer with git status, diagnostics,      ┃
-- ┃  and customizable UI components for Neovim.                           ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/neo-tree.lua         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
		"MunifTanjim/nui.nvim",
	},
	enabled = true,
	event = "VeryLazy",
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = true,
					hide_gitignored = true,
					hide_by_name = {
						"node_modules",
						".git",
						"target",
					},
					never_show = {},
				},
			},
			default_component_configs = {
				indent = {
					with_markers = true,
					indent_size = 2,
				},
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "",
				},
				git_status = {
					symbols = {
						added = "✚",
						modified = "",
						deleted = "",
						renamed = "➜",
						untracked = "★",
					},
				},
			},
		})
	end,
}
-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/neo-tree.lua
