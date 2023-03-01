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
	formatting = {
        format = function(entry, vim_item)
            vim_item.menu = ({
            })[entry.source.name]
            vim_item.kind = ({
                Text          = '',
                Method        = '',
                Function      = '',
                Constructor   = '',
                Field         = '',
                Variable      = '',
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
            })[vim_item.kind]
            return vim_item
        end,
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end
        },
    },
	window = {
		completion = {
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
			col_offset = -3,
			side_padding = 0,
		},
		documentation = {
			border = 'rounded',
			maxwidth = 50
		}
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
			format = function(entry, vim_item)	
			local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
			local strings = vim.split(kind.kind, "%s", { trimempty = true })
			kind.kind = " " .. (strings[1] or "") .. " "
			-- kind.menu = "    (" .. (strings[2] or "") .. ")"
			kind.menu = ""

			return kind
		end,
	},
})
  -- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  --
require('lspconfig')['clangd'].setup {
    capabilities = capabilities
}

require('lspconfig')['pylsp'].setup {
  capabilities = capabilities
}

