local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Any valid git URL is allowed
Plug('https://github.com/junegunn/vim-easy-align.git')

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug('fatih/vim-go', { ['tag'] = '*' })

-- If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
Plug('nsf/gocode', { ['rtp'] = 'vim' })

-- On-demand loading: loaded when the specified command is executed
Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })

-- On-demand loading: loaded when a file with a specific file type is opened
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

Plug ('hrsh7th/nvim-cmp')

Plug ('hrsh7th/cmp-nvim-lsp') 
Plug ('hrsh7th/cmp-buffer')
Plug ('hrsh7th/cmp-path')

Plug ('L3MON4D3/LuaSnip')
Plug ('saadparwaiz1/cmp_luasnip')

Plug ('neovim/nvim-lspconfig')
Plug ('williamboman/mason.nvim')
Plug ('williamboman/mason-lspconfig.nvim')

vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
vim.cmd('silent! colorscheme seoul256')

-- ============================================================================
-- 2. MASON & LSP SETUP
-- ============================================================================
-- Initialize Mason (The package manager UI)
require("mason").setup()

-- Broadcast nvim-cmp capabilities to your Language Servers
local lspconfig = vim.lsp.config
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- A helper function to set up keymaps ONLY when an LSP attaches to a buffer
local on_attach = function(_, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  -- Core IDE Keybindings
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)      -- Go to definition
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)           -- Show documentation hover
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts) -- Rename variable globally
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts) -- Code actions/Quick fixes
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)     -- Find all references
end

-- Configure individual servers via mason-lspconfig's handlers

require("mason-lspconfig").setup({
  ensure_installed = {
  "ts_ls", 
    "pyright",
  "lua_ls",
  "jdtls", 
  "gopls",
  "clojure_lsp",
  "kotlin_language_server"
 },
  handlers = {
    function (server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end,
    -- Custom settings for specific servers can go here as well
    ["lua_ls"] = function ()
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } }, -- Stop Lua from complaining about the 'vim' global
          },
        },
      })
    end,
  }
})

-- ============================================================================
-- 3. NVIM-CMP CONFIGURATION
-- ============================================================================
local cmp = require('cmp')
local luasnip = require('luasnip')



cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- Now powered up by your lspconfig servers!
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
  })
})
