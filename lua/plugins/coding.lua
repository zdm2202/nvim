function nvimcmp_setup()
    -- Setup nvim-cmp.
	local cmp = require('cmp')
	
  	cmp.setup({
      	mapping = cmp.mapping.preset.insert({
        	['<CR>'] = cmp.mapping.confirm({ select = true }),
     	}),
      	sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
      
        { name = 'buffer' },
        { name = 'path' }
        }),
        snippet = {
            expand = function(args)
                require'luasnip'.lsp_expand(args.body)
 	   	end
        },
		 
        window = {
            documentation = {
                border = 'rounded',
                maxwidth = 50
            }
        },
		formatting = {
			format = require('lspkind').cmp_format({
				mode = "symbol",
				maxwidth = 50,
				ellipsis_char = '...',
				symbol_map = {
                    Text          = '',
                    Method        = '',
                    Function      = '',
                    Constructor   = '',
                    Field         = '',
                    Variable      = '',
                    Class         = '',
                    Interface     = 'ﰮ',
                    Module        = '',
                    Property      = '',
                    Unit          = '',
                    Value         = '',
                    Enum          = '',
                    Keyword       = '',
                    Snippet       = '﬌',
                    Color         = '',
                    File          = '',
                    Reference     = '',
                    Folder        = '',
                    EnumMember    = '',
                    Constant      = '',
                    Struct        = '',
                    Event         = '',
                    Operator      = 'ﬦ',
                    TypeParameter = '',			
				},
			}),
		},
    })
        -- Setup lspconfig.
    local capabilities = require('cmp_nvim_lsp')
        .default_capabilities(vim.lsp.protocol.make_client_capabilities())
end

return {
    {'onsails/lspkind.nvim'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-nvim-lsp'},
    {
        'hrsh7th/nvim-cmp',
        config = nvimcmp_setup
    }
}
