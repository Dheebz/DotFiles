-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Folder Discovery                                                     ┃
-- ┃  Lists subfolders in the given path                                   ┃
-- ┃  File: ~/.config/nvim/lua/utils/get_folders.lua                       ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}
local uv = vim.loop

function M.get(path)
	local folders = {}
	local handle = uv.fs_scandir(path)
	if handle then
		while true do
			local name, type = uv.fs_scandir_next(handle)
			if not name then
				break
			end
			if type == "directory" then
				table.insert(folders, name)
			end
		end
	end
	return folders
end

return M

-- End of File: ~/.config/nvim/lua/utils/get_folders.lua
