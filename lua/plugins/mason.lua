return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ast_grep",
          "tailwindcss",
          "dockerls",
          "html",
          "jsonls",
          "harper_ls",
          "sqls",
          "vuels",
          "eslint",
        },
      })
    end,
  },
}
