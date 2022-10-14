" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'David-Kunz/markid'
Plug 'tpope/vim-sensible'
Plug 'brenoprata10/nvim-highlight-colors'
Plug 'junegunn/seoul256.vim'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rose-pine/neovim', { 'as': 'rose-pine' }
Plug 'romgrk/barbar.nvim'
Plug 'xiyaowong/nvim-transparent' 
Plug 'nvim-tree/nvim-tree.lua'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme rose-pine

set termguicolors
set t_Co=256



lua << End
require('lualine').setup()
require("rose-pine").setup()

require("nvim-highlight-colors").setup {
	render = 'background', -- or 'foreground' or 'first_column'
	enable_named_colors = true,
	enable_tailwind = true
}
require("transparent").setup({
  enable = true, -- boolean: enable transparent
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
require('nvim-treesitter.configs').setup({markid = { enable = true }})  -- At the bottom of your init.vim, keep all configs on one line
End
