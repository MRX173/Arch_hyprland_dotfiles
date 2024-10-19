return {
	"nyoom-engineering/oxocarbon.nvim",
	lazy = false,
	priority = 1000,
	config = function(plugin)
		vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
		vim.cmd([[colorscheme oxocarbon]])
	end,

	-- Add in any other configuration;
	--   event = foo,
	--   config = bar
	--   end,
}
