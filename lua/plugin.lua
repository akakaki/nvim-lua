local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable r:elease
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "folke/tokyonight.nvim", priority = 1000, lazy = false },
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-lualine/lualine.nvim" },

  -- {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  -- {'neovim/nvim-lspconfig'},
  -- {'hrsh7th/cmp-nvim-lsp'},
  -- {'hrsh7th/nvim-cmp'},
  -- {'L3MON4D3/LuaSnip'},
  -- {'williamboman/mason.nvim'},
  -- {'williamboman/mason-lspconfig.nvim'},
  --
  -- {
  --   "neovim/nvim-lspconfig",
  --   dependencies = {
  --     { "hrsh7th/cmp-nvim-lsp" },
  --   },
  -- },
  -- { "hrsh7th/nvim-cmp" },
  -- { "hrsh7th/cmp-buffer" },
  -- { "hrsh7th/cmp-path" },
  -- { "hrsh7th/cmp-nvim-lsp" },
  -- { "hrsh7th/cmp-nvim-lua" },
  -- { "onsails/lspkind-nvim" },
  -- { "saadparwaiz1/cmp_luasnip" },
  -- { "onsails/lspkind-nvim" },
  -- { "hrsh7th/cmp-cmdline" },
  -- { "hrsh7th/cmp-vsnip" },
  -- { "hrsh7th/vim-vsnip"},
  -- {
  --   "L3MON4D3/LuaSnip",
  --   dependencies = { "rafamadriz/friendly-snippets" },
  --   config = function()
  --     require("luasnip.loaders.from_vscode").lazy_load()
  --   end,
  -- },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  -- {
  --   "windwp/nvim-ts-autotag",
  --   config = function()
  --     require("nvim-ts-autotag").setup()
  --   end,
  -- },
})



