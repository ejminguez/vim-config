-- Map window navigation using <leader> + arrow keys
vim.keymap.set("n", "<leader><Left>", "<C-W>h", { desc = "Move to the window left" })
vim.keymap.set("n", "<leader><Down>", "<C-W>j", { desc = "Move to the window down" })
vim.keymap.set("n", "<leader><Up>", "<C-W>k", { desc = "Move to the window up" })
vim.keymap.set("n", "<leader><Right>", "<C-W>l", { desc = "Move to the window right" })
