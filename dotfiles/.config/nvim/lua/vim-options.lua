vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smarttab")
vim.cmd("set autoindent")
vim.cmd("set cc=80")
vim.cmd("set mouse=a")
vim.cmd("set number")
vim.cmd("set ttyfast")
vim.cmd("set guicursor=i:block")
vim.g.mapleader = " "

vim.cmd("set backspace=indent,eol,start")
vim.keymap.set("i", "<C-BS>", "<C-W>", {})
vim.keymap.set("i", "<C-h>", "<C-w>", {})

vim.opt.list = true
vim.opt.listchars:append("space:·")
