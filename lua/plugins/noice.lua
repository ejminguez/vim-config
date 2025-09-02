return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline_popup", -- use popup view instead of classic bottom
    },
    views = {
      cmdline_popup = {
        position = {
          row = "50%", -- vertical center
          col = "50%", -- horizontal center
        },
        size = {
          width = 80,  -- adjust width
          height = "auto",
        },
      },
    },
  },
}

