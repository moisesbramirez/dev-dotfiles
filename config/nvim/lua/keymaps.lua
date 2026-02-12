-- better up/down
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using
vim.keymap.set("n", "<A-j>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-k>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-h>", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-l>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })

-- Move Lines
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- Cursor positioning
vim.keymap.set("n", "J", "mzJ`z", { desc = "Keep cursor inplace when pressing 'shift + j'" });
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor center of page when page scrolling up" });
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor center of page when page scrolling down" });
vim.keymap.set("n", "n", "nzzzv", { desc = "Keep search terms center of page next" });
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep search terms center of page previous" });

-- Editing
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank into system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Don't replace 'copy content' when replacing" })
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Start search and replace on cursor" })
vim.keymap.set("n", "<leader>o", [[<cmd>:w|%bdelete|edit#|bdelete#|'"|set rnu|set nu<cr>]],
  { desc = "Kill all other buffers" })
vim.keymap.set("n", "<leader>zz", [[<cmd>:w|bd<cr>]], { desc = "Write and kill buffer" })
vim.keymap.set({ "n", "v" }, "<leader>cp", [[:sav %:h/]], { desc = "Save current buffer as (Duplicate into new file)" })
vim.keymap.set({ "n", "v" }, "<leader>d", vim.diagnostic.open_float, { desc = "Open diagnostic float" })
vim.keymap.set({ "n", "v" }, "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set({ "n", "v" }, "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

-- Make U opposite to u.
vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
vim.keymap.set("n", "<leader>q", "<cmd>NoNeckPain<cr>", { desc = "Toggle NoNeckPain" })
vim.keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
vim.keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })
