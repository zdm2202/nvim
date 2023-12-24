set = vim.api.nvim_set_keymap

set("n", ";", ":", {})
set("n", "<A-Up>", "<C-w><Up>", {})
set("n", "<A-Down>", "<C-w><Down>", {})
set("n", "<A-Left>", "<C-w><Left>", {})
set("n", "<A-Right>", "<C-w><Right>", {})
set("n", "<S-Left>", ":bprevious<CR>", {})
set("n", "<S-Right>", ":bnext<CR>", {})

