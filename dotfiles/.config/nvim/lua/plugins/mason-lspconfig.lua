return {
  'williamboman/mason-lspconfig.nvim',

  dependencies = {
    'williamboman/mason.nvim',
    'neovim/nvim-lspconfig'
  },

  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "clangd",
        "html",
        "jdtls",
        "jsonls",
        "glslls",
        "zls",
      }
    }

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    require('lspconfig').lua_ls.setup { capabilities = capabilities }
    require('lspconfig').clangd.setup { capabilities = capabilities }
    require('lspconfig').rust_analyzer.setup { capabilities = capabilities }
    require('lspconfig').html.setup { capabilities = capabilities }
    require('lspconfig').jsonls.setup { capabilities = capabilities }
    require('lspconfig').glslls.setup { capabilities = capabilities }
    require('lspconfig').zls.setup { capabilities = capabilities }
  end
}
