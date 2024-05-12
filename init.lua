local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader =" "
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.keymap.set('n','K', vim.lsp.buf.hover,{})
vim.keymap.set('n','gd', vim.lsp.buf.definition,{})
vim.keymap.set('n','<leader>ca', vim.lsp.buf.code_action,{})

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]
require("lazy").setup("plugins")
