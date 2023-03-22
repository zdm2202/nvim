function lspconfig_setup()
    require('lspconfig')['clangd'].setup {
        capabilities = capabilities
    }
    
    require('lspconfig')['pylsp'].setup {
        capabilities = capabilities
    }
end
return {
    {
        'neovim/nvim-lspconfig',
        config = lspconfig_setup
    }
}