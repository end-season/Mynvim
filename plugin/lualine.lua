vim.pack.add{{
    src = 'https://github.com/nvim-lualine/lualine.nvim',
    name = lualine
}}
vim.schedule(function()
    local ok, lualine = pcall(require, "lualine")
    if ok then
        lualine.setup({
            options = {
                theme = auto,
                icons_enabled = true,
            }
        })
    else
        print("等待 Lualine 插件下载并加载...")
    end
end)