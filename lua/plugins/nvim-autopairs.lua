return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true,  -- TreeSitterと連携
      disable_filetype = { "TelescopePrompt", "vim" },
    })
    
    -- nvim-cmpと連携（補完確定時の動作改善）
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end
}
