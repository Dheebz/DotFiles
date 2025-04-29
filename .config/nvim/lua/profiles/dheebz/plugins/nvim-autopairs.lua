-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Auto close brackets, quotes, etc.                                     ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/nvim-autopairs.lua  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		require("nvim-autopairs").setup({
			check_ts = true, -- Treesitter integration
		})
	end,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/nvim-autopairs.lua
