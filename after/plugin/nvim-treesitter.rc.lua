require("nvim-treesitter.configs").setup({
  ensure_installed = {"lua", "vim", "vimdoc", "html", "javascript", "css", "scss" ,"vue", "typescript", "markdown"},
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
