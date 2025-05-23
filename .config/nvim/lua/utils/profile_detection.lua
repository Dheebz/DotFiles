-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Profile Detection Agent                                              ┃
-- ┃  Detects the active nvim profile based on env file or username        ┃
-- ┃  Scans lua/profiles/ (NOT expecting init.lua or any specific file)    ┃
-- ┃  File: ~/.config/nvim/lua/utils/profile_detection.lua                 ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}
local uv = vim.loop

local cache = { profile = nil }

local function file_exists(path)
	local stat = uv.fs_stat(path)
	return (stat and stat.type) and true or false
end

local function read_first_line(path)
	local f = io.open(path, "r")
	if not f then
		return nil
	end
	local line = f:read("*l")
	f:close()
	return line
end

local function trim(s)
	return (s:gsub("^%s*(.-)%s*$", "%1"))
end

local function get_profiles()
	local profiles = {}
	local config_path = vim.fn.stdpath("config") .. "/lua/profiles" -- Fixed path here!
	local handle = uv.fs_scandir(config_path)
	if handle then
		while true do
			local name, type = uv.fs_scandir_next(handle)
			if not name then
				break
			end
			if type == "directory" then
				table.insert(profiles, name)
			end
		end
	end
	return profiles
end

function M.detect_profile()
	if cache.profile then
		return cache.profile
	end

	local profiles = get_profiles()
	local notify = require("utils.notify")

	if #profiles == 0 then
		notify.error("No profiles found in lua/profiles/")
		return nil
	end

	if #profiles == 1 then
		cache.profile = profiles[1]
		return cache.profile
	end

	-- Step 1: Check for .nvim_env file in current working directory
	local env_file = uv.cwd() .. "/.nvim-env"
	if file_exists(env_file) then
		local env_profile = read_first_line(env_file)
		if env_profile and vim.tbl_contains(profiles, env_profile) then
			cache.profile = env_profile
			return cache.profile
		end
	end

	-- Step 2: Fallback to system username
	local username = trim(os.getenv("USER") or os.getenv("USERNAME") or "")
	for _, p in ipairs(profiles) do
		if p == username then
			cache.profile = p
			return cache.profile
		end
	end

	-- No match found
	notify.error("[nvim-profile] No matching profile found!")
	return nil
end

return M

-- End of File: ~/.config/nvim/lua/utils/profile_detection.lua
