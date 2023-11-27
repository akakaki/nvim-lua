-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

vim.api.nvim_set_keymap("n", "<C-E>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  -- vim.keymap.set("n", "<C-E>", api.tree.toggle)
end

require("nvim-tree").setup({
  on_attach = on_attach,
  renderer = {
    icons = {
      show = {
	-- file = false,
	-- folder = false,
      },
    },
  },
})

