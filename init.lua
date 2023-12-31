require('lazy').setup("plugins", {
    ui = {
        border = "rounded"
    },
	change_detection = {
		enabled = false
	}
})

require('config')
require('keymaps')
require('commands')
if vim.g.neovide then require('neovide') end
