local lsp = vim.lsp

vim.lsp.config['postgres-language-server'] = require("lsp.postgres")
vim.lsp.config['rust_analyzer'] = require("lsp.rust_analyzer")
vim.lsp.config['clangd'] = require("lsp.clangd")
lsp.config['omnisharp'] = require("lsp.omnisharp")
vim.lsp.config['jdtls'] = require("lsp.jdtls")
vim.lsp.config['angularls'] = require("lsp.angularls")

lsp.enable('rust_analyzer')
lsp.enable('postgres-language-server')
lsp.enable('clangd')
lsp.enable('omnisharp')
lsp.enable('jdtls')
lsp.enable('angularls')
