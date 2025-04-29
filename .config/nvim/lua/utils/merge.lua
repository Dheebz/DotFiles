-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Merge Utility                                                        ┃
-- ┃  Provides deep table merging                                          ┃
-- ┃  File: ~/.config/nvim/lua/utils/merge.lua                             ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}

function M.deep_merge(global_spec, profile_spec)
	return vim.tbl_deep_extend("force", global_spec or {}, profile_spec or {})
end

return M

-- End of File: ~/.config/nvim/lua/utils/merge.lua
