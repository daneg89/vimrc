require('mason-lspconfig').setup({
  ensure_installed = {
    'clojure_lsp',
    'gopls',
    'jedi_language_server',
    'lua_ls',
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
