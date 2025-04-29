-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  nvim-dap-ui Keymaps (Profile Specific)                                ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/keybinds/nvim-dap-ui.lua     ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return function()
	local map = vim.keymap.set
	local dapui = require("dapui")

	-- 🔥 Toggle the DAP-UI Sidebar
	map("n", "<leader>du", function()
		dapui.toggle()
	end, { desc = "Toggle DAP-UI" })

	-- 🧠 Open DAP-UI explicitly
	map("n", "<leader>do", function()
		dapui.open()
	end, { desc = "Open DAP-UI" })

	-- 🛑 Close DAP-UI explicitly
	map("n", "<leader>dc", function()
		dapui.close()
	end, { desc = "Close DAP-UI" })
end

-- End of File: ~/.config/nvim/lua/profiles/dheebz/keybinds/nvim-dap-ui.lua
