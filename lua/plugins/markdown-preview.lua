return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		-- open the preview in a new firefox window instead of a tab
		-- (on macOS firefox is not in PATH, so go through `open`)
		vim.cmd([[
			function! MkdpOpenFirefoxWindow(url)
				if has('mac')
					call jobstart(['open', '-na', 'Firefox', '--args', '--new-window', a:url], { 'detach': v:true })
				else
					call jobstart(['firefox', '--new-window', a:url], { 'detach': v:true })
				endif
			endfunction
		]])
		vim.g.mkdp_browserfunc = "MkdpOpenFirefoxWindow"
	end,
	ft = { "markdown" },
	keys = {
		{ "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", ft = "markdown", desc = "[M]arkdown [P]review" },
	},
}
