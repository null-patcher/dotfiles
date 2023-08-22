-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.api.nvim_create_autocmd({ "VimEnter", "DirChanged" }, {
  group = vim.api.nvim_create_augroup("vimarsync", { clear = true }),
  pattern = "*",
  callback = function()
    vim.notify(tostring(vim.fn.has("AutoSync")))
    require("vim-arsync").AutoSync()
  end,
})
