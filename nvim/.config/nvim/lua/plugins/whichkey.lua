return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    require("which-key").setup({
      icons = {
        group = "+",
      },
      window = {
        border = "shadow",
        margin = {2, 2, 2, 2}
      }
    })

    require("which-key").register({
      ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
      ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
      ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
      ["<leader>b"] = { name = "[B]uffers" },
  })
  end,
}
