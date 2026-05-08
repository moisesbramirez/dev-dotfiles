return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require("conform").setup({
        notify_on_error = true,
        notify_no_formatters = true,
        formatters_by_ft = {
          ["_"] = { "trim_whitespace", "trim_newlines" },
          css = { "prettier" },
          javascriptreact = { "prettier" },
          json = { "prettier" },
          jsonc = { "prettier" },
          html = { "prettier" },
          markdown = { "prettier" },
          scss = { "prettier" },
          sh = { "shfmt" },
          typescript = { "prettier" },
          typescriptreact = { "prettier" },
          yaml = { "prettier" },
          go = { "gopls" },
          javascript = { "prettier" },
        },
        default_format_opts = {
          lsp_format = "fallback",
        },
        format_after_save = {
          lsp_format = "fallback",
        },
        formatters = {
          prettier = {
            args = {
              "exec",
              "prettier",
              "--stdin-filepath",
              "$RELATIVE_FILEPATH",
            },
            command = "pnpm",
            cwd = require("conform.util").root_file({
              "prettier.config.mjs",
              "prettier.config.ts",
            }),
            env = {
              NODE_OPTIONS = "--experimental-strip-types",
            },
            require_cwd = true,
          },
        },
      })
    end,
  },
}
