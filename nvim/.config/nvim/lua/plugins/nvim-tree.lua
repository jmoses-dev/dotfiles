return {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30
      }
    })

    local api = require("nvim-tree.api")
    vim.keymap.set('n', '<leader>eo', api.tree.open, { desc = "[E]xplore [O]pen" })
    vim.keymap.set('n', '<leader>ec', api.tree.close, { desc = "[E]xplore [C]lose" })
    vim.keymap.set('n', '<leader>ef', function()
      api.tree.find_file {
        open = true,
        focus = true
      }
    end, { desc = "[E]explore [F]ocus File"})
  end
}
