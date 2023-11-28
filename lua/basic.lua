-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
  
-- vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true
vim.opt.backup = false
vim.opt.shiftwidth = 2
vim.opt.cursorline = true

vim.opt.wildoptions = "pum"
vim.opt.pumblend = 4

-- 只有寫前端的時候才需用上，為了符合 vscode 共同作業的夥伴們
vim.api.nvim_create_autocmd("FileType",{
  pattern = { "javascript", "html", "vue" },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.autoindent = true
    vim.opt.expandtab = true
  end
})

