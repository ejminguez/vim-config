return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup(
        {
          ensure_installed = { "lua_ls", "ast_grep", "tailwindcss", "dockerls", "html", "jsonls", "harper_ls", "stimulus_ls", "sqls", "vuels", "eslint" }
        })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ast_grep.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.harper_ls.setup({})
      lspconfig.stimulus_ls.setup({})
      lspconfig.sqls.setup({})
      lspconfig.vuels.setup({})
      lspconfig.ts_ls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
