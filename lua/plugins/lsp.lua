return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "html",
        "cssls",
        "ts_ls",
        "eslint",
        "tailwindcss",
        "rust_analyzer"
      }
    })
    
    local lspconfig = require("lspconfig")
    lspconfig.html.setup{
      filetypes = {"html", "ejs" }
    }
    lspconfig.cssls.setup{}
    lspconfig.ts_ls.setup{}
    lspconfig.eslint.setup{}
    lspconfig.tailwindcss.setup{
      filetypes = {
        "html",
        "css",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "ejs"
      }
    }
    lspconfig.rust_analyzer.setup{
      setting = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    }
  end
}
