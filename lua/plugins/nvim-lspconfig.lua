return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Setting up LSP servers manually
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities,
			})

			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.harper_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.stimulus_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.sqls.setup({
				capabilities = capabilities,
			})
			lspconfig.vuels.setup({
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
			})

			-- Set up LSP diagnostics for inline display and signs in the sign column
			vim.diagnostic.config({
				virtual_text = {
					prefix = "●", -- Custom prefix for virtual text
					severity = vim.diagnostic.severity.ERROR, -- Show errors only (you can change this to show warnings as well)
				},
				signs = true, -- Enable signs in the sign column
				update_in_insert = false, -- Don't update diagnostics while typing
			})

			-- Show floating window for hover
			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = "rounded", -- Add a rounded border to the floating window
			})

			-- Keybindings for jumping between diagnostics
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
			vim.keymap.set(
				"n",
				"<leader>e",
				vim.diagnostic.open_float,
				{ desc = "Show diagnostics in a floating window" }
			)
		end,
	},
}
