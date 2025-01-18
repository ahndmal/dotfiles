local vim = vim
local Plug = vim.fn['plug#']

-- =======================================
vim.call('plug#begin')
-- ======================================

-- Shorthand notation for GitHub; translates to https://github.com/junegunn/seoul256.vim.git
Plug('junegunn/seoul256.vim')

-- Any valid git URL is allowed
Plug('https://github.com/junegunn/vim-easy-align.git')

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug('fatih/vim-go', { ['tag'] = '*' })

-- Using a non-default branch
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

-- Post-update hook: run a shell command after installing or updating the plugin
Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })

-- Post-update hook can be a lambda expression
--Plug('junegunn/fzf', { ['do'] = function()
--  vim.fn['fzf#install']()
--end })

-- If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
Plug('nsf/gocode', { ['rtp'] = 'vim' })

-- On-demand loading: loaded when the specified command is executed
Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })

Plug('jistr/vim-nerdtree-tabs')

Plug('tiagofumo/vim-nerdtree-syntax-highlight')
Plug('jiangmiao/auto-pairs')
Plug('vim-airline/vim-airline')
Plug('ctrlpvim/ctrlp.vim')

-- On-Demand Loading
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

Plug('prettier/vim-prettier', { ['do'] = 'yarn install' })

-- Comment and uncomment lines
Plug('preservim/nerdcommenter')

-- A light and configurable statusline/tabline plugin for Vim
Plug('itchyny/lightline.vim')

-- Directory tree
Plug('scrooloose/nerdtree')

-- Syntax highlighting for languages
Plug('sheerun/vim-polyglot')

-- Python code formatter
Plug('ambv/black')

Plug('kylechui/nvim-surround')

Plug('morhetz/gruvbox')

-- Haskell ('https://github.com/neovimhaskell/haskell-vim')
Plug('neovimhaskell/haskell-vim')

Plug('catppuccin/nvim')

-- ========== LSP
Plug('neovim/nvim-lspconfig')

-- On-demand loading: loaded when a file with a specific file type is opened
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

Plug('rose-pine/neovim')



-- ========================================
vim.call('plug#end')
-- =======================================


-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
vim.cmd('silent! colorscheme seoul256')

