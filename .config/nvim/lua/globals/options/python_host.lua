-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Python Host Environment                                              ┃
-- ┃  Sets the Python3 host program path                                   ┃
-- ┃  File: ~/.config/nvim/lua/globals/options/python_host.lua             ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}
M.enabled = true

M.setup = function()
	vim.g.python3_host_prog = vim.fn.expand("~/.pyenv/versions/3.12.9/bin/python")
end

return M

-- End of File: ~/.config/nvim/lua/globals/options/python_host.lua
