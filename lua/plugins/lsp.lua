function lspconfig_setup()
    -- [[
	require('lspconfig')['clangd'].setup {
        capabilities = capabilities
    }
    
    require('lspconfig')['pylsp'].setup {
        capabilities = capabilities
    }
	-- ]]
end

function mason_nvim_setup()
	require("mason").setup({
		github = {
            ---@since 1.0.0
            -- The template URL to use when downloading assets from GitHub.
            -- The placeholders are the following (in order):
            -- 1. The repository (e.g. "rust-lang/rust-analyzer")
            -- 2. The release version (e.g. "v0.3.0")
            -- 3. The asset name (e.g. "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
            download_url_template = "https://gitclone.com/github.com/%s/releases/download/%s/%s",
        },
	})
end

function mason_lspconfig_setup()
	require("mason-lspconfig").setup()
	require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
				capabilities = capabilities
			}
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        -- ["rust_analyzer"] = function ()
        --    require("rust-tools").setup {}
        -- end
    }
end

return {
	{
		'williamboman/mason.nvim',
		config = mason_nvim_setup
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = mason_lspconfig_setup
	},
    {
        'neovim/nvim-lspconfig',
        config = lspconfig_setup
    }
	
}
