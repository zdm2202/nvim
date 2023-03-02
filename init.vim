" let g:plug_url_format='https://git::@hub.fastgit.org/%s.git'


let g:plug_url_format='https://git::@hub.nuaa.cf/%s.git'

"let g:plug_threads = 60
"let g:plug_timeout = 300
"let g:plug_retries = 10

call plug#begin('$VIM/plugged')

" dependence
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'
Plug 'folke/trouble.nvim'
Plug 'williamboman/mason.nvim'

" autocomplete
Plug 'onsails/lspkind.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" theme
"Plug 'ellisonleao/gruvbox.nvim'
"Plug 'Mofiqul/vscode.nvim'
"Plug 'shaunsingh/solarized.nvim'
"Plug 'zdm2202/solarized.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" snip
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" run tasks
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

"terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" UI
Plug 'folke/noice.nvim'

call plug#end()

lua require('plugin/nvim-cmp')
lua require('plugin/catppuccin')
lua require('plugin/nvim-lspconfig')
lua require('plugin/lspkind')
lua require('plugin/nvim-tree')
lua require('plugin/lualine')
lua require('plugin/bufferline')
lua require('plugin/noice')
lua require('plugin/nvim-treesitter')
lua require('plugin/trouble')
lua require('plugin/mason-installer')
lua require('plugin/toggleterm')
lua require('setting')
colorscheme catppuccin-latte

" 一些vimscript设置 {{{
noremap <silent><C-b> :AsyncTask build<cr>
let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_rows = 9
let g:asynctasks_term_reuse = 1
" }}}

" 设置 {{{
set completeopt=menu,menuone,noselect
set winaltkeys=no
set autoread
set updatetime=300 "刷新速度
set number "显示行号
set clipboard+=unnamedplus "启用系统剪贴板
set noswapfile "无交换文件
set noshowmode "不显示当前模式
set mouse=a "开启鼠标
set scrolloff=3 "滚动时距离底部始终2行
set cursorline "高亮当前行

set cindent "c文件自动缩进
set showtabline=2 "永久显示tabline

"syntax enable
syntax on

"tab为4个空格
set tabstop=4 
set softtabstop=4 
set shiftwidth=4

"编码
set encoding=utf-8
set foldmethod=marker
" }}}

" 快捷键 {{{
map ; :
" 打开关闭折叠
imap <A-[> <ESC>za
map <A-[> za
" 强制关闭
map <A-q> :qa!<CR>
map <A-d> :bd!<CR>
" 切换buffer
imap <S-Left> <ESC>:bp<CR>i
imap <S-Right> <ESC>:bn<CR>i
map <S-Left> :bp<CR>
map <S-Right> :bn<CR>
" 切换窗口
map <A-Up> <C-w><Up>
map <A-Down> <C-w><Down>
map <A-Left> <C-w><Left>
map <A-Right> <C-w><Right>
" 保存
map <A-w> :w<CR>
" 退出终端
tnoremap <Esc> <C-\><C-n>
" }}}
