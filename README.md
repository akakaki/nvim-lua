# NeoVim lazy lua

## 安裝套件(Install plugin)

### 佈景(themes)
```
{ "folke/tokyonight.nvim", priority = 1000, lazy = false },
```

### 檔案列
```
{ "nvim-tree/nvim-tree.lua" },
```

### 狀態欄
```
{ "nvim-lualine/lualine.nvim" },
```

### 格式化配色
```
{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
```

### lsp

使用 lsp-zero 快速免除基礎設定，在搭配 mason 自動下載需要的 lsp 等內容。

官方預設內容

```
{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
{ "neovim/nvim-lspconfig" },
{ "hrsh7th/cmp-nvim-lsp" },
{ "hrsh7th/nvim-cmp" },
{ "L3MON4D3/LuaSnip" },
```

mason

```
{ "williamboman/mason.nvim" },
{ "williamboman/mason-lspconfig.nvim" },
```

輸入 i 進行安裝選擇

1. mason.nvim
  - css-lsp
  - eslint-lsp
  - eslint_d
  - html_lsp
  - json_lsp
  - vue-language-server
