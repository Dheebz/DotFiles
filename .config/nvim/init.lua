-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Neovim Init                                                          ┃
-- ┃  Modular, profile-based config with notification control              ┃
-- ┃  File: ~/.config/nvim/init.lua                                        ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Repair the global type function in case it was overwritten:
if type == nil then
	_G.type = function(v)
		return (getmetatable(v) and getmetatable(v).__type)
			or (debug.getmetatable and debug.getmetatable(v).__type)
			or (string.sub(tostring(v), 1, 5) == "table" and "table")
			or tostring(v)
	end
end
if type == nil then
	_G.type = rawget(_G, "type") or function(v)
		return tostring(v):match("^%w+")
	end
end

local notify_config = require("utils.notification_config")
local notify = require("utils.notify")
local profile_detection = require("utils.profile_detection")
local loader = require("utils.generic_loader")
-- User can override notify config here if they want:
-- notify_config.set({ silent_run = false, debug = true })
notify_config.set({ silent_run = false, debug = false })

-- Detect profile
local profile = profile_detection.detect_profile()
if not profile then
	notify.error("No valid profile detected. Loading minimal config.")
	return
end

notify.info("Loaded profile: " .. profile)

----------------------------------------------------------
-- 🟢 Stage 1: Basic Options (leader key MUST come first)
----------------------------------------------------------
loader.load("options", profile, function(options) end)

----------------------------------------------------------
-- 🟠 Stage 2: Plugins (Lazy.nvim setup, plugin specs)
----------------------------------------------------------
local lazy_loader = require("utils.lazy_loader")

-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

lazy_loader.setup_plugins({
	spec = {
		{ import = "globals.plugins" },
		{ import = "profiles." .. profile .. ".plugins" },
	},
	defaults = {
		lazy = true,
		version = false,
	},
	install = {
		colorscheme = { "catppuccin" },
	},
	checker = {
		enabled = true,
		notify = false,
	},
})

----------------------------------------------------------
-- 🟡 Stage 3: Keymaps (plugin-safe keymaps)
----------------------------------------------------------
loader.load("keybinds", profile, function(keybinds) end)
----------------------------------------------------------
-- 🟣 Stage 4: Autocmds (highlight yank, resize splits, etc.)
----------------------------------------------------------
local global_path = vim.fn.stdpath("config") .. "/lua/globals/autocmds/"
local profile_path = vim.fn.stdpath("config") .. "/lua/profiles/" .. profile .. "/autocmds/"
local autocmds = {
	global_path,
	profile_path,
}
for _, path in ipairs(autocmds) do
	local files = vim.fn.readdir(path)
	for _, file in ipairs(files) do
		if file:match("%.lua$") then
			local module_name = path:gsub(vim.fn.stdpath("config") .. "/lua/", ""):gsub("/", ".")
				.. file:gsub("%.lua$", "")
			local autocmd = require(module_name)
			if autocmd and type(autocmd) == "function" then
				autocmd()
			end
		end
	end
end

----------------------------------------------------------
-- 🟦 Stage 5: LSP Servers (dynamic modular loading)
----------------------------------------------------------
loader.load("lsp/servers", profile, function(server)
	if type(server) == "table" and server.enabled ~= false then
		if server.setup and type(server.setup) == "function" then
			local capabilities = vim.tbl_deep_extend(
				"force",
				vim.lsp.protocol.make_client_capabilities(),
				require("cmp_nvim_lsp").default_capabilities() or {}
			)
			server.setup(capabilities)
		else
			require("utils.notify").debug("[lsp-loader] No setup() in server module")
		end
	else
		require("utils.notify").debug("[lsp-loader] Server disabled or invalid")
	end
end)

-- End of File: ~/.config/nvim/init.lua
