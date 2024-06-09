return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "tsserver", "yamlls", "marksman", "jsonls", "html", "cssls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<space>ca', vim.lsp.buf.code_action, {})
    end
  }
}
