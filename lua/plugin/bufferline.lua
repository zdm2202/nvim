require("bufferline").setup{
	highlights = require("catppuccin.groups.integrations.bufferline").get(),
	options = {
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left"
			}
		},
		tab_size = 10,
		enforce_regular_tabs = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		separator_style = 'thin',	
	},
}
