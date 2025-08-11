-- ~/.config/nvim/lua/config/options.lua
local o = vim.opt
o.number = true
o.relativenumber = true
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true
o.termguicolors = true
o.mouse = "a"
o.clipboard = "unnamedplus"
o.laststatus = 3

-- EJSファイルをHTMLとして扱う
vim.filetype.add({
  extension = {
    ejs = "html",
  },
})
