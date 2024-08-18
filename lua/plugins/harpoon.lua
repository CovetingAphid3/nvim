return {
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
    vim.api.nvim_set_keymap('n', '<a-o>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<a-=>', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<a-1>', ':lua require("harpoon.ui").nav_next()<CR>', { noremap = true, silent = true }),
vim.api.nvim_set_keymap('n', '<a-2>', ':lua require("harpoon.ui").nav_prev()<CR>', { noremap = true, silent = true })

}
