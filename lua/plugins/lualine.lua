return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'auto',  -- カラースキームに合わせて自動調整
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            }
        })
    end
}
