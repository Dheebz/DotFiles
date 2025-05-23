-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Mason Tool Installer (Auto Install Servers/Tools)                    ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/mason-tool-installer.lua ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = { "williamboman/mason.nvim" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- LSPs
				"lua-language-server",
				"pyright",
				"bash-language-server",

				-- Formatters
				"stylua",
				"black",
				"isort",

				-- Linters
				"flake8",
				"ruff",
				"luacheck",
				"mypy",

				-- Debuggers
				"debugpy",
			},
			auto_update = false,
			run_on_start = true,
			start_delay = 3000, -- 3 second delay after startup
			debounce_hours = 12, -- check every 12 hours max
		})
	end,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/mason-tool-installer.lua
