cmp_highlights = {
    PmenuSel = { bg = "#fffaf3", fg = "NONE" },
    Pmenu = { fg = "#575279", bg = "#dfdad9" },

    CmpItemKindField = { fg = "#EED8DA", bg = "#d7827e" },
    CmpItemKindProperty = { fg = "#EED8DA", bg = "#d7827e" },
    CmpItemKindEvent = { fg = "#EED8DA", bg = "#d7827e" },

    CmpItemKindText = { fg = "#C3E88D", bg = "#56949f" },
    CmpItemKindEnum = { fg = "#C3E88D", bg = "#56949f" },
    CmpItemKindKeyword = { fg = "#C3E88D", bg = "#56949f" },

    CmpItemKindConstant = { fg = "#FFE082", bg = "#ea9d34" },
    CmpItemKindConstructor = { fg = "#FFE082", bg = "#ea9d34" },
    CmpItemKindReference = { fg = "#FFE082", bg = "#ea9d34" },

    CmpItemKindFunction = { fg = "#EADFF0", bg = "#907aa9" },
    CmpItemKindStruct = { fg = "#EADFF0", bg = "#907aa9" },
    CmpItemKindClass = { fg = "#EADFF0", bg = "#907aa9" },
    CmpItemKindModule = { fg = "#EADFF0", bg = "#907aa9" },
    CmpItemKindOperator = { fg = "#EADFF0", bg = "#907aa9" },

    CmpItemKindVariable = { fg = "#C5CDD9", bg = "#797593" },
    CmpItemKindFile = { fg = "#C5CDD9", bg = "#797593" },

    CmpItemKindUnit = { fg = "#F5EBD9", bg = "#ea9d34" },
    CmpItemKindSnippet = { fg = "#F5EBD9", bg = "#ea9d34" },
    CmpItemKindFolder = { fg = "#F5EBD9", bg = "#ea9d34" },

    CmpItemKindMethod = { fg = "#DDE5F5", bg = "#6C8ED4" },
    CmpItemKindValue = { fg = "#DDE5F5", bg = "#6C8ED4" },
    CmpItemKindEnumMember = { fg = "#DDE5F5", bg = "#6C8ED4" },

    CmpItemKindInterface = { fg = "#D8EEEB", bg = "#58B5A8" },
    CmpItemKindColor = { fg = "#D8EEEB", bg = "#58B5A8" },
    CmpItemKindTypeParameter = { fg = "#D8EEEB", bg = "#58B5A8" },
}
function catppuccin_setup()
    
    require("catppuccin").setup({
        flavour = "latte", -- latte, frappe, macchiato, mocha
        highlight_overrides = {
            latte = function(latte)
                return cmp_highlights
            end,
        },
    })

end

function rosepine_setup()
    require('rose-pine').setup({
        variant = 'dawn',
        highlight_groups = cmp_highlights
    })
    vim.cmd.colorscheme("rose-pine")
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        -- config = catppuccin_setup
    },
    { 
        'rose-pine/neovim',
        name = 'rose-pine',
        config = rosepine_setup
    }
}