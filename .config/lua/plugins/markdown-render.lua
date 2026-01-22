return ({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({completions = { lsp = { enabled = true } }, })
    end,
})
