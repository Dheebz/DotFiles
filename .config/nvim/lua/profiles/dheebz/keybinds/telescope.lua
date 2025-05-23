-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Telescope Keymaps (Profile Specific)                                  ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/keybinds/telescope.lua       ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return function()
	local map = vim.keymap.set

	map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
	map("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
	map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "List Buffers" })
	map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find Help Tags" })
	map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Recent Files" })

	-- 🔥 Conditional mapping: If todo-comments is available
	local ok, _ = pcall(require, "todo-comments")
	if ok then
		map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find TODOs" })
	end
end

-- End of File: ~/.config/nvim/lua/profiles/dheebz/keybinds/telescope.lua
