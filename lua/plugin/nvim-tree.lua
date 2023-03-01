require("nvim-tree").setup({
	view = {
		float = {
			enable = false,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				-- border = "rounded",
				width = 60,
				height = 32,
				row = 1,
				col = 10,
			}
		}
	}
})
vim.api.nvim_set_keymap("n", "<A-e>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

