function catppuccin_setup()
    cmp_highlights = {
        CmpItemKindField = { fg = "#EED8DA", bg = "#B5585F" },
        CmpItemKindProperty = { fg = "#EED8DA", bg = "#B5585F" },
        CmpItemKindEvent = { fg = "#EED8DA", bg = "#B5585F" },

        CmpItemKindText = { fg = "#C3E88D", bg = "#9FBD73" },
        CmpItemKindEnum = { fg = "#C3E88D", bg = "#9FBD73" },
        CmpItemKindKeyword = { fg = "#C3E88D", bg = "#9FBD73" },

        CmpItemKindConstant = { fg = "#FFE082", bg = "#D4BB6C" },
        CmpItemKindConstructor = { fg = "#FFE082", bg = "#D4BB6C" },
        CmpItemKindReference = { fg = "#FFE082", bg = "#D4BB6C" },

        CmpItemKindFunction = { fg = "#EADFF0", bg = "#A377BF" },
        CmpItemKindStruct = { fg = "#EADFF0", bg = "#A377BF" },
        CmpItemKindClass = { fg = "#EADFF0", bg = "#A377BF" },
        CmpItemKindModule = { fg = "#EADFF0", bg = "#A377BF" },
        CmpItemKindOperator = { fg = "#EADFF0", bg = "#A377BF" },

        CmpItemKindVariable = { fg = "#C5CDD9", bg = "#7E8294" },
        CmpItemKindFile = { fg = "#C5CDD9", bg = "#7E8294" },

        CmpItemKindUnit = { fg = "#F5EBD9", bg = "#D4A959" },
        CmpItemKindSnippet = { fg = "#F5EBD9", bg = "#D4A959" },
        CmpItemKindFolder = { fg = "#F5EBD9", bg = "#D4A959" },

        CmpItemKindMethod = { fg = "#DDE5F5", bg = "#6C8ED4" },
        CmpItemKindValue = { fg = "#DDE5F5", bg = "#6C8ED4" },
        CmpItemKindEnumMember = { fg = "#DDE5F5", bg = "#6C8ED4" },

        CmpItemKindInterface = { fg = "#D8EEEB", bg = "#58B5A8" },
        CmpItemKindColor = { fg = "#D8EEEB", bg = "#58B5A8" },
        CmpItemKindTypeParameter = { fg = "#D8EEEB", bg = "#58B5A8" },
    }
    require("catppuccin").setup({
        flavour = "latte", -- latte, frappe, macchiato, mocha
        highlight_overrides = {
            latte = function(latte)
                return cmp_highlights
            end,
        },
    })
    vim.cmd.colorscheme("catppuccin")
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = catppuccin_setup
    }
}