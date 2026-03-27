return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
      "ravitemer/codecompanion-history.nvim",
    },
    version = "^19.0.0",
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
            },
            tools = {
              ["grep_search"] = {
                enabled = function(adapter)
                  return vim.fn.executable("rg") == 1
                end,
              },
            },
          },
          inline = {
            adapter = "claude_code",
          },
          cmd = {
            adapter = "claude_code",
          },
          cli = {
            agent = "claude_code",
            agents = {
              claude_code = {
                cmd = "claude",
                args = {},
                description = "Claude Code CLI",
                provider = "terminal",
              },
            },
          },
        },
        adapters = {
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
        extensions = {
          mcphub = {
            callback = "mcphub.extensions.codecompanion",
            opts = {
              make_vars = true,
              make_slash_commands = true,
              show_result_in_chat = true
            }
          },
          history = {
            enabled = true,
            opts = {
              dir_to_save = vim.fn.stdpath("data") .. "/codecompanion_chats.json",
            }
          },
        },
      })
    end,
  },
}
