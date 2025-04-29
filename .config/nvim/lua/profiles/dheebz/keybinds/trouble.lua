-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Trouble.nvim Keymaps (Profile Specific)                               ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/keybinds/trouble.lua         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return function()
	local map = vim.keymap.set

	map("n", "<leader>xx", "<cmd>TroubleToggle<CR>", { desc = "Toggle Trouble window" })
	map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", { desc = "Workspace Diagnostics" })
	map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", { desc = "Document Diagnostics" })
	map("n", "<leader>xr", "<cmd>TroubleToggle lsp_references<CR>", { desc = "LSP References" })
	map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", { desc = "Quickfix List" })
	map("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>", { desc = "Location List" })
end

-- End of File: ~/.config/nvim/lua/profiles/dheebz/keybinds/trouble.lua
