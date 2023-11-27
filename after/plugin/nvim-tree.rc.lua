-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

vim.api.nvim_set_keymap("n", "<C-E>", ":NvimTreeToggle<CR>", {})

local function on_attach(bufnr)
  local api = require("nvim-tree.api")

  vim.keymap.set("n", "<C-E>", api.tree.toggle)
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

