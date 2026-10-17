return {
	"lervag/vimtex",
	ft = { "tex" },
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		vim.g.vimtex_compiler_method = "latexmk"

		-- PDF viewer depends on the OS
		if vim.fn.has("mac") == 1 then
			vim.g.vimtex_view_method = "skim"
		else
			vim.g.vimtex_view_general_viewer = "okular"
			vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
		end
	end,
}
