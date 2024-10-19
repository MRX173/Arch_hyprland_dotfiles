return {
	{
		"lunarvim/horizon.nvim",
		lazy = false,
		priority = 1000,
		config = function(plugin)
			vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
			vim.cmd([[colorscheme horizon]])
		end,
	},
}
