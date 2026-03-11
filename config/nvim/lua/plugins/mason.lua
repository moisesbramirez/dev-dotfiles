return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = true,
      ensure_installed = {
        "css_variables",
        "cssls",
        "eslint",
        "ember",
        "golangci-lint",
        "golangci_lint_ls",
        "gopls",
        "harper_ls",
        "html",
        "lua_ls",
        "marksman",
        "solargraph",
        "stylelint_lsp",
        "ts_ls",
        "vimls",
        "yamlls",
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
}
