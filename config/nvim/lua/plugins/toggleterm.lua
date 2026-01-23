return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        direction = "float",
        float_opts = {
          border = "single",
        },
        size = 90,
      })

      local function lg_toggle()
        local Terminal = require("toggleterm.terminal").Terminal

        if not term then
          term = Terminal:new({
            cmd = "lazygit",
            dir = "git_dir",
            hidden = true,
            on_exit = function()
              term = nil
            end,
          })
          if term then
            term:toggle()

            vim.cmd("set ft=lazygit")
            vim.keymap.set("t", "<a-q>", function()
              term:toggle()
            end, {
              desc = "Quit lazygit floating terminal",
              buffer = true,
              silent = true,
            })
          end
        else
          term:toggle()
        end
      end

      vim.api.nvim_create_user_command("LazyGitToggle", lg_toggle, {})
      vim.keymap.set("n", "<leader>gg", "<cmd>LazyGitToggle<cr>", {
        desc = "Toggle lazygit in floating terminal",
        noremap = true,
        silent = true
      })
    end,
  },
}
