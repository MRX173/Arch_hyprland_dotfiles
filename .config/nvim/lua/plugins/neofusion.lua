return {
	{
		"diegoulloao/neofusion.nvim",
		lazy = false,
		priority = 1000,
		config = function(plugin)
			vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
			vim.cmd([[colorscheme neofusion]])
			vim.o.background = "dark"
		end,
	},
}
