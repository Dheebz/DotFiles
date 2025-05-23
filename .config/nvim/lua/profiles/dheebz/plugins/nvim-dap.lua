-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Debug Adapter Protocol (DAP)                                          ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/nvim-dap.lua        ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
-- TODO: Configure
return {
	"mfussenegger/nvim-dap",
	config = function()
		-- Example adapter setup:
		-- local dap = require("dap")
		-- dap.adapters.python = {
		--   type = "executable",
		--   command = "~/.virtualenvs/debugpy/bin/python",
		--   args = { "-m", "debugpy.adapter" },
		-- }
		-- dap.configurations.python = {
		--   {
		--     type = "python",
		--     request = "launch",
		--     name = "Launch file",
		--     program = "${file}",
		--     pythonPath = function() return "/usr/bin/python3" end,
		--   },
		-- }
	end,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/nvim-dap.lua
