
function nvimtree_setup()
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
end

function lualine_setup()
    require('lualine').setup {
        options = {
            icons_enabled = true,
            -- theme = '',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
            statusline = {},
            winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {},
            lualine_x = {'searchcount'},
            lualine_y = {'encoding'},
            lualine_z = {'filetype'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {}
        },
        winbar = {},
        inactive_winbar = {},
        extensions = {'nvim-tree'}
    }
    
end

function nvimscrollbar_setup()
    require("scrollbar").setup({
        handle = {
            text = " ",
            color = "#cecacd",
            color_nr = nil, -- cterm
            highlight = "CursorColumn",
            hide_if_all_visible = true, -- Hides handle if all lines are visible
        },
		marks = {
			Cursor = {
				text = " "
			}
		}
    })
end
function bufferline_setup_setup()
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
end
return {
    {
        'kyazdani42/nvim-tree.lua',
        config = nvimtree_setup,
		event = "VeryLazy"
    },
    {
        'nvim-lualine/lualine.nvim',
        config = lualine_setup
    },
    {
        'petertriho/nvim-scrollbar',
        config = nvimscrollbar_setup
    },
	{
		'akinsho/bufferline.nvim',
		dependencies = {
			'kyazdani42/nvim-web-devicons'
		},
		config = bufferline_setup
	}
}
