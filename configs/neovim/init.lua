local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.o.shell = "zsh"

vim.cmd [[
  hi NotifyBackground guibg = #000000
]]

autocmd("BufWritePre", {
  pattern = { "*" },
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
