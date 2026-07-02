vim.pack.add{{
    src = 'https://github.com/akinsho/toggleterm.nvim',
    name = toggleterm,
}}

require("toggleterm").setup({
    size = 20,                     -- 终端窗口大小
    open_mapping = [[<c-\>]],      -- 设置 Ctrl+\ 来开关终端
    direction = 'horizontal',      -- 在下方水平打开 (可选: 'vertical', 'float', 'tab')
    start_in_insert = true,        -- 打开后自动进入插入模式
    close_on_exit = true,          -- 终端进程结束后自动关闭窗口
    insert_mappings = true,        -- 是否允许在插入模式下使用开关快捷键
    terminal_mappings = true,      -- 是否允许在终端模式下使用开关快捷键
})