 -- Refer to https://github.com/LunarVim/LunarVim/blob/master/lua/lvim/core/bufferline.lua
return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
         mode = "buffers"
      }
    })

     vim.keymap.set("n", "<leader>bj", "<cmd>BufferLinePick<cr>", { desc = "[J]ump"})
     vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<cr>", { desc = "[N]ext"})
     vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineCyclePrev<cr>", { desc = "[P]revious"})
  end,
}
