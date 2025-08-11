-- ~/.config/nvim/lua/config/keymaps.lua
local map, opts = vim.keymap.set, { silent = true }
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>t", ":belowright 10split | terminal<CR>i", opts)
map("t", "<Esc>", [[<C-\><C-n>]], opts)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
-- ファイルツリーはプラグイン読み込み後に動く
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

