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
     vim.keymap.set("n", "<leader>bc", "<cmd>bdelete<cr>", { desc = "[C]lose current"})

     vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", { desc = "which_key_ignore"})
     vim.keymap.set("n", "<leader>$", "<cmd>BufferLineGoToBuffer -1<CR>", { desc = "which_key_ignore"})
  end,
}
