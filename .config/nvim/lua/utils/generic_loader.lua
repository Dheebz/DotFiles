-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Generic Loader (Fixed Require Paths)                                 ┃
-- ┃  Loads specs from global + profile folders, merges, applies           ┃
-- ┃  File: ~/.config/nvim/lua/utils/generic_loader.lua                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}
local get_files = require("utils.get_files").get
local notify = require("utils.notify")

-- Safely require module by Lua package path (not file system path!)
local function safe_require(module_path, file)
	local full_module = module_path .. "." .. file
	local ok, mod = pcall(require, full_module)
	if not ok then
		notify.debug("Failed to require: " .. full_module)
		return nil
	end
	return mod
end

local function run_specs(module_path, folder_path)
	local files = get_files(folder_path)
	for _, file in ipairs(files) do
		local mod = safe_require(module_path, file)
		if type(mod) == "table" then
			if mod.enabled == false then
				notify.debug("Skipped (disabled): " .. file)
			elseif mod.setup then
				notify.debug("Running setup for: " .. file)
				mod.setup()
			else
				notify.debug("No setup function in: " .. file .. " (skipped)")
			end
		elseif type(mod) == "function" then
			notify.debug("Running function spec: " .. file)
			mod()
		else
			notify.debug("Invalid module type for: " .. file .. " (skipped)")
		end
	end
end

M.load = function(category, profile)
	notify.debug("Loading category: " .. category .. " | profile: " .. profile)

	local global_module_path = "globals." .. category
	local global_folder_path = vim.fn.stdpath("config") .. "/lua/globals/" .. category

	local profile_module_path = "profiles." .. profile .. "." .. category
	local profile_folder_path = vim.fn.stdpath("config") .. "/lua/profiles/" .. profile .. "/" .. category

	-- First load global specs
	run_specs(global_module_path, global_folder_path)
	-- Then load profile overrides (if any)
	run_specs(profile_module_path, profile_folder_path)
end

return M

-- End of File: ~/.config/nvim/lua/utils/generic_loader.lua
