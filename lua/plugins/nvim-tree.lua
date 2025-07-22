return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- 👈 This shows hidden files by default
					show_hidden_count = true,
					hide_dotfiles = false, -- 👈 This ensures dotfiles are shown
					hide_gitignored = false,
				},
			},
		})

		vim.keymap.set("n", "<leader><leader>", ":Neotree toggle<CR>")
		vim.keymap.set("n", "<leader>n", "<Cmd>Neotree reveal<CR>", { desc = "Open NeoTree" })
	end,
}
