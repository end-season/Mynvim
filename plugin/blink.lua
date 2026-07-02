vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = "v1", name = "blink.cmp" },
})

require("blink.cmp").setup({
	
	keymap = {
	
		preset = "enter",
	
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
        -- Tab 键：向下选择下一个补全项
		["<Tab>"] = { "select_next", "fallback" },
        -- Shift+Tab 键：向上选择上一个补全项
		["<S-Tab>"] = { "select_prev", "fallback" },
		-- Ctrl+b：翻看补全文档（向上）
		["<C-b>"] = { "scroll_documentation_up", "fallback" },
        -- Ctrl+f：翻看补全文档（向下）
		["<C-f>"] = { "scroll_documentation_down", "fallback" },
		-- Ctrl+k：显示/隐藏函数参数签名提示
		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
	},
	appearance = {
		nerd_font_variant = "mono",
	},
	
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},

	
	fuzzy = { implementation = "prefer_rust_with_warning" },
	completion = {
		keyword = { range = "prefix" },
		menu = {
			draw = {
				treesitter = { "lsp" },
			},
		},
		trigger = { show_on_trigger_character = true },
		documentation = {
			auto_show = true,
		},
	},
	signature = { enabled = true },
})