function catppuccin_setup()
    
    require("catppuccin").setup({
        flavour = "latte", -- latte, frappe, macchiato, mocha
        highlight_overrides = {
            latte = function(latte)
                -- return cmp_highlights
            end,
        },
		integrations = {
			cmp = true
		}
    })
	vim.cmd.colorscheme("catppuccin")
end

function rosepine_setup()
    require('rose-pine').setup({
        variant = 'dawn',
        highlight_groups = cmp_highlights
    })
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = catppuccin_setup
    },
    { 
        'rose-pine/neovim',
        name = 'rose-pine',
        -- config = rosepine_setup
    }
}
