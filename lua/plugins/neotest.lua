return {
  {
    "nvim-neotest/neotest",
    opts = {
      discovery = {
        enabled = false,
        concurrent = 0,
      },
    },
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "fredrikaverpil/neotest-golang", version = "*" }, -- Installation
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-golang"), -- Registration
        },
      })
    end,
  },
}
