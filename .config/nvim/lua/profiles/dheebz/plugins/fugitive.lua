return {
	"tpope/vim-fugitive",
	enabled = true,

	config = function()
		require("gitsigns").setup()
	end,
}
