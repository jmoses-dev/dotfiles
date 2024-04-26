return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  module = "persistence",
  config = function()
    require("persistence").setup({
      dir = vim.fn.expand(vim.fn.stdpath("state") .. "/session/"),
      options = { "buffers", "curdir", "tabpages", "winsize" },
    })
    -- This is a change
    -- restore the session for the current directory
    vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})

    -- restore the last session
    vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

    -- stop Persistence => session won't be saved on exit
    vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})
  end,
}
