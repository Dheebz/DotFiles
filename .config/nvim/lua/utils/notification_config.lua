-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Notification Config                                                  ┃
-- ┃  Centralized notification behavior flags                              ┃
-- ┃  File: ~/.config/nvim/lua/utils/notification_config.lua               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- TODO: Make Toggleable Debug/Silent Run functions

local M = {}

-- Defaults (can be overridden by profiles or runtime)
M.silent_run = false
M.debug = true

-- Optional: helper to flip flags at runtime
function M.set(opts)
  if opts.silent_run ~= nil then
    M.silent_run = opts.silent_run
  end
  if opts.debug ~= nil then
    M.debug = opts.debug
  end
end

return M

-- End of File: ~/.config/nvim/lua/utils/notification_config.lua
