return {
	"echasnovski/mini.diff",
	opts = {
		view = { style = "sign" },
	},
	config = function(_, opts)
		local diff = require("mini.diff")
		opts.source = diff.gen_source.save()
		diff.setup(opts)
	end,
}
