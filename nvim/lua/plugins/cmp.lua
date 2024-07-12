return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	lazy = false,
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
		"onsails/lspkind.nvim",
	},
	config = function()
		local lspkind = require("lspkind")
		lspkind.init({
			symbol_map = {
				Text = "󰉿",
				Method = "󰆧",
				Function = "󰊕",
				Constructor = "",
				Field = "󰜢",
				Variable = "󰀫",
				Class = "󰠱",
				Interface = "",
				Module = "",
				Property = "󰜢",
				Unit = "󰑭",
				Value = "󰎠",
				Enum = "",
				Keyword = "󰌋",
				Snippet = "",
				Color = "󰏘",
				File = "󰈙",
				Reference = "󰈇",
				Folder = "󰉋",
				EnumMember = "",
				Constant = "󰏿",
				Struct = "󰙅",
				Event = "",
				Operator = "󰆕",
				TypeParameter = "",
			},
		})

		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				-- REQUIRED - you must specify a snippet engine.
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			window = {
				documentation = {
					border = require("user.border").border,
					-- Make the documentation border be the same as other borders.
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
				},
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
				["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
				["<C-e>"] = cmp.mapping.abort(),
				["<Tab>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "nvim_lsp_signature_help" },
				{ name = "path" },
				{ name = "vsnip" },
				{ name = "buffer" },
			}),
			experimental = {
				ghost_text = true,
				native_menu = false,
			},
			---@diagnostic disable-next-line: missing-fields
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
					menu = {
						nvim_lsp = "[LSP]",
						nvim_lsp_signature_help = "[Signature]",
						buffer = "[Buffer]",
						path = "[Path]",
						vim_vsnip = "[Snippet]",
					},
				}),
			},
		})

		-- Use buffer source for `/` and `?`.
		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = { { name = "buffer" } },
		})

		-- Use cmdline & path source for ':'.
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
		})

		vim.g.vsnip_snippet_dir = "~/dotfiles/nvim/vsnip"
		vim.cmd([[
      imap <expr> <C-n> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<C-n>'
      smap <expr> <C-n> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<C-n>'
      imap <expr> <C-p> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<C-p>'
      smap <expr> <C-p> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<C-p>'
    ]])
	end,
}
