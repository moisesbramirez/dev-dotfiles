return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = false,
        component_separators = '',
        section_separators = '',
      },
      sections = {
        lualine_a = {},
        lualine_b = { "branch" },
        lualine_c = {
          {
            "filename",
            path = 1,
          },
          "diagnostics"
        },
        lualine_x = { "encoding" },
        lualine_y = { "location", "progress" },
        lualine_z = {}
      },
    },
  },
}
