-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

vim.api.nvim_set_keymap("n", "<C-E>", "::NvimTreeToggle<CR>", {})

require("nvim-tree").setup({
  renderer = {
    icons = {
      show = {
	-- file = false,
	-- folder = false,
      },
    },
  },
})

