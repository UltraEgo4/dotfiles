call plug#begin('~/.config/nvim/plugged')


Plug 'https://github.com/nvim-treesitter/nvim-treesitter.git', {'do': ':TSUpdate'}

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'





" LSP Support
Plug 'neovim/nvim-lspconfig'                           " Required
Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Optional
Plug 'williamboman/mason-lspconfig.nvim'               " Optional

" Autocompletion
Plug 'hrsh7th/nvim-cmp'     " Required
Plug 'hrsh7th/cmp-nvim-lsp' " Required
Plug 'L3MON4D3/LuaSnip'     " Required

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}
Plug 'folke/tokyonight.nvim'
Plug 'nyngwang/nvimgelion'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'luckasRanarison/tree-sitter-hypr'

call plug#end()

source ~/.config/nvim/lua/set.lua
source ~/.config/nvim/lua/treesitter.lua
source ~/.config/nvim/lua/lsp.lua
source ~/.config/nvim/lua/nvim_tree.lua
source ~/.config/nvim/lua/indent-blankline.lua


" Setup global configuration. More on configuration below.
lua << EOF
local cmp = require'cmp'

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.config.disable
  }
})

EOF




