local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'mrcjkb/haskell-tools.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'maxmx03/solarized.nvim'
vim.call('plug#end')

-- show diagnostics in such a way we can actually see them
vim.diagnostic.config({ virtual_text = true})

vim.o.nu = true
vim.o.rnu = true
vim.g.mapleader = ' '
vim.o.expandtab = true


vim.keymap.set('n', '<leader>pf', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>pg', ':Telescope live_grep<CR>')

local tsconfigs = require('nvim-treesitter.configs')

tsconfigs.setup {
  ensure_installed = { 'haskell' },
  highlight = {
    enable = true
  }
}
