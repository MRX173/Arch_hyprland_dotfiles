return {
	-- Add spaceduck theme
	{
		"pineapplegiant/spaceduck",
		lazy = false,
		priority = 1000,
	},

	-- Configure LazyVim to use spaceduck
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "spaceduck",
		},
	},

	-- Optional: Configure specific highlight groups for spaceduck
	{
		"pineapplegiant/spaceduck",
		config = function()
			vim.cmd([[
        if has('termguicolors')
          set termguicolors
        endif
        
        " Enable italic comments
        let g:spaceduck_italic_comments = 1
        
        " Enable italic keywords
        let g:spaceduck_italic_keywords = 1
        
        " Enable transparent background (optional)
        " let g:spaceduck_transparent_background = 1
        
        colorscheme spaceduck
      ]])

			-- Optional: Custom highlight overrides
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
}
