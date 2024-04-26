-- For reference see: https://github.com/the0xalex/dotfiles/blob/main/nvim/.config/nvim/lua/options.lua

local options = {
  -- Copying
  clipboard = "unnamedplus",               -- neovim to share the system clipboard `:h clipboard`

  -- Tab 
  expandtab = true,
  softtabstop = 2,
  tabstop = 2,
  shiftwidth = 2,

  -- Line Numbers
  number = true,
  numberwidth = 4,
  relativenumber = true,
  wrap = false,

  -- Search
  incsearch = true
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
