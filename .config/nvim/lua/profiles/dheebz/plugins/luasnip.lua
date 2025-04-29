-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Snippets engine                                                       ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/plugins/LuaSnip.lua         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
	"L3MON4D3/LuaSnip",
	build = "make install_jsregexp", -- optional, for advanced regex features
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
	enabled = true,
}

-- End of File: ~/.config/nvim/lua/profiles/dheebz/plugins/LuaSnip.lua
