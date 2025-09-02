return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "html", "css", "javascript" }, -- 👈 This line ensures the parsers are installed
      highlight = {
        enable = true, -- 🌈 Enable highlighting
      },
      indent = {
        enable = true, -- (Optional) Enable better indentation
      }
    })
  end
}

