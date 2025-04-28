-- Map window navigation using <leader> + arrow keys
vim.keymap.set("n", "<leader><Left>", "<C-W>h", { desc = "Move to the window left" })
vim.keymap.set("n", "<leader><Down>", "<C-W>j", { desc = "Move to the window down" })
vim.keymap.set("n", "<leader><Up>", "<C-W>k", { desc = "Move to the window up" })
vim.keymap.set("n", "<leader><Right>", "<C-W>l", { desc = "Move to the window right" })

-- Resize by 10 lines row
vim.keymap.set("n", "<leader>+", ":resize +10<CR>", { desc = "Resize Window Up by 10" })
vim.keymap.set("n", "<leader>-", ":resize -5<CR>", { desc = "Resize Window Down by 10" })

-- Resize by 10 lines columns
vim.keymap.set("n", "<leader><", ":vertical resize -10<CR>", { desc = "Resize Window Left by 10" })
vim.keymap.set("n", "<leader>>", ":vertical resize +10<CR>", { desc = "Resize Window Right by 10" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
