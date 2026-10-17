return {
	"echasnovski/mini.diff",
	opts = {
		-- color line numbers, so the sign column stays free for gitsigns and diagnostics
		view = { style = "number" },
	},
	config = function(_, opts)
		local diff = require("mini.diff")
		opts.source = diff.gen_source.save()
		diff.setup(opts)
	end,
}
