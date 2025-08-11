return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter",
  config = function()
    require("nvim-ts-autotag").setup({
      filetypes = { "html", "xml", "jsx", "tsx", "ejs" }
    })
  end
}
