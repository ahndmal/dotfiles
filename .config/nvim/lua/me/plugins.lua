return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- this is essential.
   
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
	requires = {{'nvim-lua/plenary.nvim'}}
    }

    use({ 'rose-pine/neovim', as = 'rose-pine' })

    vim.cmd('colorscheme rose-pine')

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    
    use("github/copilot.vim")

    use 'preservim/nerdcommenter'

    use("folke/zen-mode.nvim")

    use 'itchyny/lightline.vim'

    use 'scrooloose/nerdtree'

    use 'neoclide/coc.nvim'

    use 'sheerun/vim-polyglot'

    -- 'morhetz/gruvbox'
    -- Plug 'patstockwell/vim-monokai-tasty'
end)
