-- Key Maps

-- [[ MARK: Normal Mode --]]

vim.keymap.set("n", "<leader>oo", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "lsp format buffer" })

-- [[ MARK: Insert Mode --]]

vim.keymap.set("i", "jh", "<esc>") -- Bounce back to normal
