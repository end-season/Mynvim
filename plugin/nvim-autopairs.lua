vim.pack.add { { src = "https://github.com/windwp/nvim-autopairs",
                 name = "nvim-autopairs" } }


vim.schedule(function()
    local ok, nvim_autopairs = pcall(require, "nvim-autopairs")
    if ok then
        nvim_autopairs.setup({
            
        })
    else
        print("等待 autopairs 插件下载并加载...")
    end
end)