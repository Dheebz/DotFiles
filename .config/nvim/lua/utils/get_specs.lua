-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Spec Collector (Safe Version)                                        ┃
-- ┃  Collects specs from all .lua files in a given directory, or empty {} ┃
-- ┃  File: ~/.config/nvim/lua/utils/get_specs.lua                         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}
local get_files = require("utils.get_files").get
local notify = require("utils.notify")

function M.collect(path)
	local specs = {}
	local files = {}

	-- Check if folder actually exists before trying to read it
	local stat = vim.loop.fs_stat(path)
	if not stat or stat.type ~= "directory" then
		notify.debug("Spec path not found, skipping: " .. path)
		return specs -- just return empty list, all good
	end

	files = get_files(path)

	for _, file in ipairs(files) do
		local ok, spec = pcall(require, path:gsub("/", ".") .. "." .. file)
		if ok and spec then
			table.insert(specs, spec)
		else
			notify.debug("Failed to require spec file: " .. path .. "/" .. file .. ".lua")
		end
	end

	return specs
end

return M

-- End of File: ~/.config/nvim/lua/utils/get_specs.lua
