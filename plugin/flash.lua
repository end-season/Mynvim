-- 使用 vim.pack.add 下载 flash.nvim
vim.pack.add({
    { src = "https://github.com/folke/flash.nvim", name = "flash" }
})

-- 立即配置 flash.nvim
require("flash").setup({
    ---@type Flash.Config
    opts = {},
})

-- 设置快捷键
vim.keymap.set({ "n", "x", "o" }, "s", function() require("flash").jump() end, { desc = "Flash" })
vim.keymap.set({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
vim.keymap.set("o", "r", function() require("flash").remote() end, { desc = "Remote Flash" })
vim.keymap.set({ "o", "x" }, "R", function() require("flash").treesitter_search() end, { desc = "Treesitter Search" })
vim.keymap.set("c", "<c-s>", function() require("flash").toggle() end, { desc = "Toggle Flash Search" })
