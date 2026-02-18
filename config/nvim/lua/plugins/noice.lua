return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("noice").setup({
        health = {
          checker = false,
        },
        messages = {
          enabled = false,
        },
        notify = {
          enabled = false,
        },
        presets = {
          bottom_search = false,
          long_message_to_split = false,
          inc_rename = false,
        },
        views = {
          cmdline_popup = {
            position = {
              row = 24,
              col = "50%",
            },
            size = {
              width = 60,
              height = "auto",
            },
          },
          popupmenu = {
            relative = "editor",
            position = {
              row = 32,
              col = "50%",
            },
            size = {
              width = 60,
              height = 10,
            },
            border = {
              style = "rounded",
              padding = { 0, 1 },
            },
            win_options = {
              winhighlight = {
                Normal = "Normal",
                FloatBorder = "DiagnosticInfo",
              },
            },
          },
        },
      })
    end
  }
}
