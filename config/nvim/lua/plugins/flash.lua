return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      labels = "ghjklwetozcvbnm",
      modes = {
        char = {
          enabled = false,
        },
        search = {
          enabled = true,
        },
      },
    },
    keys = {
      { "f", mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" },
      { "s", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      {
        "r",
        mode = { "o", "x" },
        function()
          local register = vim.v.register
          require("flash").treesitter_search({
            action = function(match, state)
              require("flash.jump").remote_op(match, state, register)
            end,
          })
        end,
        desc = "Treesitter Search",
      },
      {
        "R",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash"
      },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
}
