local moi = vim.api.nvim_create_augroup("moi", { clear = true })
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePre", {
  group = moi,
  desc = "Strip trailing white space",
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

autocmd("BufReadPost", {
  group = moi,
  desc = "Treat *.t as Ruby",
  pattern = "*.t",
  command = "set filetype=ruby",
})

autocmd("BufReadPost", {
  group = moi,
  desc = "Turn on spell check for commits",
  pattern = "*.git/COMMIT_EDITMSG",
  command = "set spell!",
})

autocmd({ "WinEnter", "BufWinEnter", "TermOpen" }, {
  desc = "Set insert mode within terminals",
  callback = function(args)
    if vim.startswith(vim.api.nvim_buf_get_name(args.buf), "term://") then
      vim.cmd("startinsert")
    end
  end,
})

autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("EslintAutoFix", { clear = false }),
  desc = "Run EsLint with --fix",
  pattern = { "*.ts", "*.js", "*.mjs", "*.cjs" },
  callback = function(args)
    local client = vim.lsp.get_clients({
      name = "eslint",
      bufnr = vim.api.nvim_get_current_buf(),
    })

    if not client then
      require("conform").format()
      return
    end

    vim.cmd("LspEslintFixAll")
    require("conform").format()
  end,
})
