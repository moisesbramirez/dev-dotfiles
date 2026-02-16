return {
  {
    "willothy/flatten.nvim",
    config = true,
    lazy = false,
    priority = 1001,
    opts = function()
      local flatten = require("flatten")
      ---@type Terminal?
      local saved_terminal

      return {
        window = {
          open = "alternate",
        },
        hooks = {
          should_block = function(argv)
            return vim.tbl_contains(argv, "-b")
          end,

          pre_open = function()
            local term = require("toggleterm.terminal")
            local termid = term.get_focused_id()
            saved_terminal = term.get(termid)
          end,

          post_open = flatten.hooks.post_open,

          block_end = function()
            vim.schedule(function()
              if saved_terminal then
                saved_terminal:open()
                saved_terminal = nil
              end
            end)
          end,
        },
      }
    end,
  },
}
