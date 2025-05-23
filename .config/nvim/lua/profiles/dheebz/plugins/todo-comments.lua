-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Todo Comments Plugin                                                 ┃
-- ┃  Description: Configuration for the "todo-comments.nvim" plugin,      ┃
-- ┃  providing highlighting and search for TODO comments in code.         ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/todo-comments.lua   ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"folke/todo-comments.nvim",
	enabled = true,
	config = function()
		require("todo-comments").setup()
	end,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/todo-comments.lua
