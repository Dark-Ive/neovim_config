
--init.lua

require("config.mappings")
require("config.lazy")

vim.api.nvim_set_hl(0, "IblScope", {fg = "#fabd2f"})
vim.api.nvim_set_hl(0, "CursorLine", {bg = "#2a2a2a"})
vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', { fg = "#fabd2f" })

vim.opt.cursorline = true

vim.wo.number = false
vim.wo.relativenumber = true

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
})

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
})

vim.cmd([[
    highlight Comment gui = italic
    highlight Error gui = italic
]])

vim.api.nvim_set_hl(0, "Cmdline", { bg = "NONE" })
vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#fabd2f", bg = "NONE" })

--clipboard from wsl to windows
vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}
