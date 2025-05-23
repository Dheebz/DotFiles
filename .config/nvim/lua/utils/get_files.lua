-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  File Discovery (SAFE VERSION, NO table.insert)                       ┃
-- ┃  Lists .lua files in the given path safely                            ┃
-- ┃  File: ~/.config/nvim/lua/utils/get_files.lua                         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}
local uv = vim.loop

function M.get(path)
	local files = {} -- Must always be a table

	local handle = uv.fs_scandir(path)
	if handle then
		while true do
			local name = uv.fs_scandir_next(handle)
			if not name then
				break
			end

			local stat = uv.fs_stat(path .. "/" .. name)
			if stat and stat.type == "file" and name:match("%.lua$") then
				-- ✅ Safe insert without using table.insert
				files[#files + 1] = name:gsub("%.lua$", "")
			end
		end
	end

	return files
end

return M

-- End of File: ~/.config/nvim/lua/utils/get_files.lua
