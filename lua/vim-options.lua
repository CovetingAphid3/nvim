
vim.opt.smartindent = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.guicursor = "i:blinkon50-blinkoff50"

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set wrap!")
vim.g.mapleader = " "

-- Search and replace in the entire file, case-insensitive
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Open Ex mode when pressing <Space>pv in normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Move selected lines up in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Select all
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
-- Format the current file using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- Scroll the screen down by half and center on the cursor position
vim.keymap.set("n", "<C-j>", "<C-d>zz")
-- Scroll the screen up by half and center on the cursor position
vim.keymap.set("n", "<C-k>", "<C-u>zz")
-- Move to the next search result and center on the cursor position
vim.keymap.set("n", "n", "nzzzv")
-- Move to the previous search result and center on the cursor position
vim.keymap.set("n", "N", "Nzzzv")

-- Yank the selected text to the system clipboard in normal and visual mode
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

