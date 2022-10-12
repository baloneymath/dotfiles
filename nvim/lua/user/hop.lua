local ok, hop = pcall(require, "hop")
if not ok then
	return
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>hw", ":HopChar2<CR>", opts)
keymap("n", "<leader>hl", ":HopLine<CR>", opts)

keymap("v", "<leader>hw", "<CMD>HopChar2<CR>", opts)
keymap("v", "<leader>hl", "<CMD>HopLine<CR>", opts)

keymap("x", "<leader>hw", "<CMD>HopChar2<CR>", opts)
keymap("x", "<leader>hl", "<CMD>HopLine<CR>", opts)

hop.setup({})
