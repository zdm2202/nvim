require("trouble").setup {
	fold_open = "", -- icon used for open folds
    fold_closed = "", -- icon used for closed folds
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
	signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    },
    use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}
