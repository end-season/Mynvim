--系统粘贴板
vim.opt.clipboard = 'unnamedplus' 

--控制补全
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

--控制缩进
vim.opt.tabstop = 4   
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true

--开启行号和关闭相对行号
vim.opt.number = true
vim.opt.relativenumber = false

--高亮光标所在行
vim.opt.cursorline = true

--控制分割窗口方向为下和右
vim.opt.splitbelow = true
vim.opt.splitright = true

--隐藏模式显示
vim.opt.showmode = false

--搜索
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true 
