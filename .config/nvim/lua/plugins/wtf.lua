return {
	{
		"piersolenski/wtf.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		opts = {
			-- Directory for storing chat files
			chat_dir = vim.fn.stdpath("data"):gsub("/$", "") .. "/wtf/chats",
			-- Default AI popup type (choose one: "popup", "horizontal", "vertical")
			popup_type = "popup", -- Choose one option, cannot use "|"
			-- An alternative way to set your API key
			openai_api_key = "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",
			-- ChatGPT Model
			openai_model_id = "gpt-3.5-turbo",
			-- Send code as well as diagnostics
			context = true,
			-- Set your preferred language for the response
			language = "english",
			-- Any additional instructions
			additional_instructions = "Start the reply with 'OH HAI THERE'",
			-- Default search engine (choose one: "google", "duck_duck_go", etc.)
			search_engine = "google", -- Choose one option, cannot use "|"
			-- Callbacks
			hooks = {
				request_started = nil,
				request_finished = nil,
			},
			-- Add custom colours
			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
		},
		keys = {
			{
				"<leader>wa",
				mode = { "n", "x" },
				function()
					require("wtf").ai()
				end,
				desc = "Debug diagnostic with AI",
			},
			{
				mode = { "n" },
				"<leader>ws",
				function()
					require("wtf").search()
				end,
				desc = "Search diagnostic with Google",
			},
			{
				mode = { "n" },
				"<leader>wh",
				function()
					require("wtf").history()
				end,
				desc = "Populate the quickfix list with previous chat history",
			},
			{
				mode = { "n" },
				"<leader>wg",
				function()
					require("wtf").grep_history()
				end,
				desc = "Grep previous chat history with Telescope",
			},
		},
	},
}
