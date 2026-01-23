return {
  {
    "folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        hl.Comment = { fg = "#7986cc" }
        hl.LineNr = { fg = "#94a3e7" }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts);
      vim.cmd([[colorscheme tokyonight-moon]])
    end,
  },
}
