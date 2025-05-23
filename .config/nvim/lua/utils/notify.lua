-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Notification System                                                  ┃
-- ┃  Handles notification behavior based on silent/debug flags            ┃
-- ┃  File: ~/.config/nvim/lua/utils/notify.lua                            ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local config = require("utils.notification_config")

local M = {}

local function notify(msg, level)
	vim.notify(msg, level or vim.log.levels.INFO)
end

function M.error(msg)
	notify("[nvim-config] ERROR: " .. msg, vim.log.levels.ERROR)
end

function M.info(msg)
	if not config.silent_run or config.debug then
		notify("[nvim-config] " .. msg, vim.log.levels.INFO)
	end
end

function M.debug(msg)
	if config.debug then
		notify("[nvim-config][DEBUG] " .. msg, vim.log.levels.DEBUG)
	end
end

function M.summary(stage, stats)
	local msg = string.format(
		"[nvim-config] %s: Loaded %d | Skipped %d | Failed %d",
		stage,
		stats.loaded,
		stats.skipped,
		stats.failed
	)

	if config.debug then
		notify(msg, vim.log.levels.INFO)
	elseif not config.silent_run then
		notify(msg, vim.log.levels.INFO)
	end
end

return M

-- End of File: ~/.config/nvim/lua/utils/notify.lua
