" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" autocomplete
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" Quality of life
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'David-Kunz/markid'
Plug 'tpope/vim-sensible'
Plug 'brenoprata10/nvim-highlight-colors'
Plug 'junegunn/seoul256.vim'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Pretty things
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'romgrk/barbar.nvim'
Plug 'xiyaowong/nvim-transparent' 
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()


set completeopt=menu,menuone,noselect

set termguicolors
colorscheme catppuccin-frappe

lua << EOF
require('lualine').setup()

require("nvim-highlight-colors").setup {
	render = 'background', -- or 'foreground' or 'first_column'
	enable_named_colors = true,
	enable_tailwind = true
}
require("transparent").setup({
  enable = false, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})
require('nvim-treesitter.configs').setup {
	highlight = { markid = true }
}
EOF

