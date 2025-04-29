-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Lazy Loader                                                          ┃
-- ┃  Sets up lazy.nvim with collected plugin specs                        ┃
-- ┃  File: ~/.config/nvim/lua/utils/lazy_loader.lua                       ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local notify = require("utils.notify")

local function setup_plugins(plugins)
	notify.debug("Setting up plugins: " .. vim.inspect(plugins))
	local ok, err = pcall(function()
		require("lazy").setup(plugins)
	end)
	if not ok then
		notify.error("Failed to setup plugins: " .. err)
	end
end

return {
	setup_plugins = setup_plugins,
}
-- End of File: ~/.config/nvim/lua/utils/lazy_loader.lua
