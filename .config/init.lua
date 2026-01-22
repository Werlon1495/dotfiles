vim.opt.encoding = "utf-8"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.showcmd = true
require("config.lazy")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('lsp.setup')
require('lsp')
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- status bar
local ctp_feline = require('catppuccin.special.feline')

ctp_feline.setup({view = {
        lsp = {
            	progress = true,
		name = true,
            	exclude_lsp_names = {},
		separator = "|",
	},
    }})

require("feline").setup({
    components = ctp_feline.get_statusline(),
})
-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.cmd.colorscheme("catppuccin-mocha")
vim.keymap.set('n','di',vim.diagnostic.open_float)
vim.keymap.set('n',"<C-,>",":NvimTreeToggle<CR>")
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { silent = true })
vim.keymap.set('n', '<C-l>', vim.lsp.buf.hover, { silent = true })
vim.keymap.set('n', '<C-m>', ":RenderMarkdown toggle<CR>")
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set("n", "gr", builtin.lsp_references)
vim.keymap.set("n", "gd", builtin.lsp_definitions)
vim.keymap.set('n', 'fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.diagnostic.config({
  update_in_insert = true,
})
-- Terminal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<A-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('t', '<A-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('t', '<A-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('t', '<A-l>', [[<C-\><C-n><C-w>l]])

-- Insert mode
vim.keymap.set('i', '<A-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('i', '<A-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('i', '<A-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('i', '<A-l>', [[<C-\><C-n><C-w>l]])

-- Normal mode
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')

-- Tabs
-- To go to tab n: ngt
-- To go to next tab: C-tab
vim.keymap.set('n', 'gn', ":tabnew<CR>")

-- Terminal mode
-- Always start in another tab!
vim.keymap.set('n', 'tn', ":terminal<CR>")
