return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
    },
    version = "^18.0.0",
    event = "VeryLazy",
    config = function()
      require("codecompanion").setup({
        interactions = {
          chat = {
            adapter = "claude_code",
            keymaps = {
              options = {
                modes = { n = "g?" },
                callback = "keymaps.options",
                description = "Options",
                hide = true,
              },
            }
          },
          inline = {
            adapter = "claude_code",
          },
          cmd = {
            adapter = "claude_code",
          },
        },
        adapters = {
          http = {},
          acp = {
            claude_code = function()
              return require("codecompanion.adapters").extend("claude_code", {
                env = {
                  CLAUDE_CODE_OAUTH_TOKEN =
                  "cmd:jq -r '.claudeAiOauth.accessToken' < /home/dev/.claude/.credentials.json 2>/dev/null",
                },
              })
            end,
          },
        },
      })
    end,
  },
}
