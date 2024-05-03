-- Key Maps

-- [[ MARK: Normal Mode --]]

vim.keymap.set("n", "<leader>oo", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "lsp format buffer" })

-- [[ MARK: Insert Mode --]]

vim.keymap.set("i", "jh", "<esc>") -- Bounce back to normal

-- [[ MARK: Reloading --]]
vim.keymap.set('n', '<leader>rr', ':lua os.exit(1)<CR>', { noremap = true, silent = true })
-- This is a change
-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})
