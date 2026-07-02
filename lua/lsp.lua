
-- Remove Global Default Key mapping
vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")

-- Create keymapping
-- LspAttach: After an LSP Client performs "initialize" and attaches to a buffer.
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function (args)
        local keymap = vim.keymap
        local lsp = vim.lsp
	    local bufopts = { noremap = true, silent = true }

        --查找引用
        keymap.set("n", "gr", lsp.buf.references, bufopts)
        --跳转到定义
        keymap.set("n", "gd", lsp.buf.definition, bufopts)
        --重命名
        keymap.set("n", "<space>rn", lsp.buf.rename, bufopts)
        --悬浮提示
        keymap.set("n", "K", lsp.buf.hover, bufopts)
        --格式化代码
        keymap.set("n", "<space>f", function()
            vim.lsp.buf.format({ async = true })
        end, bufopts)
    end
})

vim.lsp.enable({ "ty", "clangd" })