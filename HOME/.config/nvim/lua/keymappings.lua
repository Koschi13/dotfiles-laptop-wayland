-- Better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })


-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })


-- Keep visual mode indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Remove highlights
vim.api.nvim_set_keymap("n", "<CR>", ":noh<CR><CR>", { noremap = true, silent = true })

-- Buffers
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gn", ":bn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gp", ":bp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-q>", ":BufferClose<CR>", { noremap = true, silent = true })

-- Move between barbar buffers
vim.api.nvim_set_keymap("n", "<A-1>", ":BufferGoto 1<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-2>", ":BufferGoto 2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-3>", ":BufferGoto 3<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-4>", ":BufferGoto 4<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-5>", ":BufferGoto 5<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-6>", ":BufferGoto 6<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-7>", ":BufferGoto 7<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-8>", ":BufferGoto 8<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-9>", ":BufferGoto 9<CR>", { silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", "<CMD>Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-p>", "<CMD>Telescope live_grep<CR>", { noremap = true })

-- Find word/file across project
vim.api.nvim_set_keymap("n", "<Space>pf", "<CMD>Telescope find_files<CR><ESC>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Space>pw", "<CMD>Telescope grep_string<CR><ESC>", { noremap = true })

-- Git
vim.api.nvim_set_keymap("n", "<Space>gla", "<CMD>lua require('plugins.telescope').my_git_commits()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>glc", "<CMD>lua require('plugins.telescope').my_git_bcommits()<CR>", { noremap = true, silent = true })

-- Don't yank on delete char
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "X", '"_X', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "x", '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "X", '"_X', { noremap = true, silent = true })

-- Floaterm
vim.api.nvim_set_keymap("n", "<F12>", "<CMD>FloatermToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F11>", "<C-\\><C-n>:FloatermNext<CR>", { noremap = true, silent = true })
