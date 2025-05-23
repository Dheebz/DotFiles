-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Which Key (Global)                                                   ┃
-- ┃  Description: Configuration for the "which-key.nvim" plugin,          ┃
-- ┃  providing a popup to display available keybindings in Neovim.        ┃
-- ┃  File: ~/.config/nvim/lua/globals/plugins/which-key.lua               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"folke/which-key.nvim",
	enabled = true,

	event = "VeryLazy",
	opts = {
		--
		--
		--
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local KeyMaps (which-key)",
		},
	},
}
-- End of File: ~/.config/nvim/lua/globals/plugins/which-key.lua
