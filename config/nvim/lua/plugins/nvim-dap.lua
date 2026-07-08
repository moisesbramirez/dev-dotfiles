return {
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
      "leoluz/nvim-dap-go",
    },
    config = function()
      local dap = require("dap")
      dap.set_log_level("TRACE")

      require("dapui").setup()
      require("nvim-dap-virtual-text").setup()
      require('dap-go').setup({
        dap_configurations = {
          {
            type = "go",
            name = "Debug Test (container)",
            request = "attach",
            mode = "remote",
            port = "3004",
          },
          {
            type = "go",
            name = "Debug Test",
            request = "launch",
            mode = "test",
          },
        },
        delve = {
          build_flags = { "-tags=parallel,serial" },
        },
      })

      local wk = require "which-key"

      wk.add {
        {
          "<leader>b",
          "<cmd>lua require('dap').toggle_breakpoint()<cr>",
          desc = "Toggle Breakpoint",
        },
        {
          "<leader>db",
          "<cmd>lua require('dap').step_back()<cr>",
          desc = "Step Back",
        },
        {
          "<leader>dc",
          "<cmd>lua require('dap').continue()<cr>",
          desc = "Continue",
        },
        {
          "<leader>dC",
          "<cmd>lua require('dap').run_to_cursor()<cr>",
          desc = "Run To Cursor",
        },
        {
          "<leader>dd",
          "<cmd>lua require('dap').disconnect()<cr>",
          desc = "Disconnect",
        },
        {
          "<leader>di",
          "<cmd>lua require('dap').step_into()<cr>",
          desc = "Step Into",
        },
        {
          "<leader>do",
          "<cmd>lua require('dap').step_over()<cr>",
          desc = "Step Over",
        },
        {
          "<leader>du",
          "<cmd>lua require('dap').step_out()<cr>",
          desc = "Step Out",
        },
        {
          "<leader>dr",
          "<cmd>lua require('dap').repl.toggle()<cr>",
          desc = "Toggle Repl",
        },
        {
          "<leader>ds",
          "<cmd>lua require('dap').continue()<cr>",
          desc = "Start",
        },
        {
          "<leader>dq",
          "<cmd>lua require('dap').close()<cr>",
          desc = "Quit",
        },
        {
          "<leader>dt",
          "<cmd>lua require('dap-go').debug_test()<cr>",
          desc = "Start",
        },
        {
          "<leader>dU",
          "<cmd>lua require('dapui').toggle({reset = true})<cr>",
          desc = "Toggle UI",
        },
      }
    end,
  },
}
