if vim.g.neovide then
	require('neovide')
	vim.g.border = "none"
else
	vim.g.border = "rounded"
end

require('lazy').setup("plugins", {
    ui = {
        border = vim.g.border
    },
	change_detection = {
		enabled = false
	}
})

require('config')
require('keymaps')
require('commands')
