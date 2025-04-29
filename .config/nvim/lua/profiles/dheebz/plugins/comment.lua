-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Comment.nvim Plugin Spec (Profile Specific)                           ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/comment.lua         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"numToStr/Comment.nvim",
	event = { "BufReadPost", "BufNewFile" }, -- Lazy load when opening files
	config = function()
		require("Comment").setup()
	end,
	enabled = true,
}
-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/comment.lua
