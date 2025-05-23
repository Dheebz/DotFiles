-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Highlight other uses of the word under cursor                         ┃
-- ┃  File: ~/.config/nvim/lua/globals/plugins/vim-illuminate.lua          ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"RRethy/vim-illuminate",
	event = { "CursorHold", "CursorHoldI" },
	config = function()
		require("illuminate").configure({
			delay = 120,
			large_file_cutoff = 2000,
			large_file_overrides = {
				providers = { "lsp" },
			},
		})
	end,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/globals/plugins/vim-illuminate.lua
