return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"css",
				"diff",
				"dockerfile",
				"html",
				"javascript",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"typescript",
				"vim",
				"vimdoc",
			},

			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "ruby" },
			},

			indent = {
				enable = true,
				disable = { "ruby" },
			},
		})
	end,
}
