return {
  {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    opts = {
      width = 140,
      disableOnLastBuffer = true,
      autocmds = {
        enableOnVimEnter = true,
        reloadOnColorSchemeChange = true,
      },
      mappings = {
        enabled = true,
        scratchPad = false,
      },
      buffers = {
        right = { enabled = false },
      },
    },
  },
}
