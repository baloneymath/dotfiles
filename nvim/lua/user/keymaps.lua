-- Show plugin manager.
vim.keymap.set("n", "<leader>p", "<cmd>Lazy<cr>", { desc = "Show plugin manager", noremap = true, silent = true })

-- Make it easier to save and quit.
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file", noremap = true, silent = true })
vim.keymap.set("n", "<leader>x", "<cmd>wq<cr>", { desc = "Save file and quit", noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", "<cmd>q!<cr>", { desc = "Quit", noremap = true, silent = true })

-- Execute macro recorded on "q" easily.
vim.keymap.set("n", "Q", "@q", { desc = "Execute macro <q>", noremap = true, silent = true })

-- Make Y behave like other capitals.
vim.keymap.set("n", "Y", "y$", { noremap = true, silent = true })

-- Automatically clear highlight.
vim.keymap.set("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", noremap = true, silent = true })

-- Keep the register the same after pasting.
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- Move text up and down easily.
vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down", noremap = true, silent = true })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up", noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":m+<cr>", { desc = "Move down", noremap = true, silent = true})
vim.keymap.set("n", "<C-k>", ":m-2<cr>", { desc = "Move up", noremap = true, silent = true})

-- Search word under cursor but stay on the current word.
vim.keymap.set("n", "gw", "*N", { desc = "Search word under cursor", noremap = true, silent = true })

-- Jump between items in quickfix.
vim.keymap.set("n", "]q", ":cnext<cr>", { desc = "Go to next [q]uickfix", noremap = true, silent = true })
vim.keymap.set("n", "[q", ":cprev<cr>", { desc = "Go to previous [q]uickfix", noremap = true, silent = true })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-left>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-right>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-down>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-up>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Diagnostics.
vim.keymap.set(
	"n",
	"<leader>e",
	vim.diagnostic.open_float,
	{ desc = "Show diagnostics [e]rror messages", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"]d",
	vim.diagnostic.goto_next,
	{ desc = "Go to next [d]iagnostics", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"[d",
	vim.diagnostic.goto_prev,
	{ desc = "Go to previous [d]iagnostics", noremap = true, silent = true }
)

-- Tabs
vim.keymap.set("n", "<leader>1", ":tabmove 1<cr>", { desc = "Move to tab 1", noremap = true, silent = true})
vim.keymap.set("n", "<leader>2", ":tabmove 2<cr>", { desc = "Move to tab 2", noremap = true, silent = true})
vim.keymap.set("n", "<leader>3", ":tabmove 3<cr>", { desc = "Move to tab 3", noremap = true, silent = true})
vim.keymap.set("n", "<leader>4", ":tabmove 4<cr>", { desc = "Move to tab 4", noremap = true, silent = true})
vim.keymap.set("n", "<leader>5", ":tabmove 5<cr>", { desc = "Move to tab 5", noremap = true, silent = true})
vim.keymap.set("n", "<leader>n", ":tabn<cr>", { desc = "Move to next tab", noremap = true, silent = true})
vim.keymap.set("n", "<leader>N", ":tabp<cr>", { desc = "Move to previous tab", noremap = true, silent = true})

