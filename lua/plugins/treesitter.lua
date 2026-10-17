return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").install({
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
		})

		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
			callback = function(event)
				local lang = vim.treesitter.language.get_lang(event.match)
				if not lang then
					return
				end

				-- auto install parsers for filetypes that aren't in the list above
				if not vim.treesitter.language.add(lang) then
					if vim.tbl_contains(require("nvim-treesitter").get_available(), lang) then
						require("nvim-treesitter").install(lang)
					end
					return
				end

				vim.treesitter.start(event.buf, lang)

				if event.match ~= "ruby" then
					vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
