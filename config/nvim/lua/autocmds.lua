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

autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspAttachGroup", {}),
  desc = "On-Save behaviors provided via LSP",
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

    if client:supports_method("textDocument/formatting") then
      autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("LspAutoFormat", { clear = false }),
        desc = "Format via LSP",
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
        end,
      })
    end

    autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("EslintAutoFix", { clear = false }),
      desc = "Run EsLint with --fix",
      pattern = { "*.ts", "*.js", "*.mjs", "*.cjs" },
      command = "silent! LspEslintFixAll",
    })
  end,
})
