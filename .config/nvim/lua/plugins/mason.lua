return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",
      "phpactor",
      "djlint",
      "tsserver",
    },
  },
}
