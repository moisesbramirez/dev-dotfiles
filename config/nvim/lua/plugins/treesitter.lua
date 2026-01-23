local languages = {
  "bash",
  "css",
  "git_config",
  "gitcommit",
  "gitignore",
  "glimmer",
  "go",
  "html",
  "javascript",
  "jq",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "regex",
  "ruby",
  "scss",
  "typescript",
  "vim",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
  },
  {
    "MeanderingProgrammer/treesitter-modules.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      local ts = require("treesitter-modules")
      ts.setup({
        ensure_installed = languages,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false
        },
        indent = { enable = true },
        fold = { enable = false },
        incremental_selection = { enable = true },
      })
      vim.keymap.set("n", "<C-space>", ts.init_selection, { desc = "Treesitter select" })
      vim.keymap.set("x", "<C-space>", ts.node_incremental, { desc = "Treesitter increase selection" })
      vim.keymap.set("x", "<nop>", ts.scope_incremental, { desc = "Treesitter increase scope" })
      vim.keymap.set("x", "<bs>", ts.node_decremental, { desc = "Treesitter decrease selection" })
    end
  },
}
