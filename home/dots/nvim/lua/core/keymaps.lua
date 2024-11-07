
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })
vim.keymap.set("n","<leader>e", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", '"_dp')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set('n', '<leader>v', '<C-w>v', { noremap = true })
vim.keymap.set('n', '<leader>h', '<C-w>s', { noremap = true })

-- Resize windows with Ctrl+arrow keys
vim.keymap.set('n', '<C-Left>', '<C-w><', { noremap = true })
vim.keymap.set('n', '<C-Right>', '<C-w>>', { noremap = true })
vim.keymap.set('n', '<C-Up>', '<C-w>+', { noremap = true })
vim.keymap.set('n', '<C-Down>', '<C-w>-', { noremap = true })

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab

vim.keymap.set("n", "<leader>fc", ":! clang++ -Wall -std=c++11 main.cpp -o main && ./main<CR>")

-- Move to next buffer with Tab
vim.keymap.set('n', '<Tab>', '<Cmd>bnext<CR>', { noremap = true, silent = true })
-- Move to previous buffer with Shift+Tab
vim.keymap.set('n', '<S-Tab>', '<Cmd>bprevious<CR>', { noremap = true, silent = true })
-- Close buffer
vim.keymap.set('n', '<A-c>', '<Cmd>bdelete<CR>', { noremap = true, silent = true })


