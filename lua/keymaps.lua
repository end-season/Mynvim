--设置主键
vim.g.mapleader = " "

--通用配置
local opts = {
    noremap = true,
    silent = true,
}

--退出编辑模式
vim.keymap.set('i', 'jk', '<ESC>', opts)

--<Ctrl> + h/j/k/l移动窗口光标
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

--<Ctrl> + 方向键调整窗口大小
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

--保持选区
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

--打开关闭文件数
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", opts)