return {
	-- nvim-cmp completion plugin
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- For LSP-based completion
			"hrsh7th/cmp-buffer", -- Buffer completion (for word completion in the current file)
			"hrsh7th/cmp-path", -- Path completion (for file paths)
			"L3MON4D3/LuaSnip", -- Snippet support
			"saadparwaiz1/cmp_luasnip", -- LuaSnip source for cmp
			"rafamadriz/friendly-snippets", -- Collection of snippets
		},
		config = function()
			-- Load LuaSnip snippets
			local luasnip = require("luasnip")
			require("luasnip.loaders.from_vscode").lazy_load()

			-- Set up nvim-cmp
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					-- REQUIRED - You must specify a snippet engine
					expand = function(args)
						luasnip.lsp_expand(args.body) -- Use LuaSnip to expand snippets
					end,
				},
				mapping = {
					["<C-n>"] = cmp.mapping.select_next_item(), -- Next suggestion
					["<C-p>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
					["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
					["<C-e>"] = cmp.mapping.abort(), -- Abort completion
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
				},
				sources = {
					{ name = "nvim_lsp" }, -- LSP source (for language server completion)
					{ name = "buffer" }, -- Buffer source (for completion from the current file)
					{ name = "path" }, -- Path source (for file path completion)
					{ name = "luasnip" }, -- LuaSnip source (for snippet completion)
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
			})
		end,
	},
}
