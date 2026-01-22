return {
  cmd = { 'postgres-language-server', 'lsp-proxy' },
  filetypes = {
    'sql',
  },
  root_dir = function(fname)
	  local lspconfig = require('lspconfig')
		local util = lspconfig.util
	  local root = util.root_pattern('postgres-language-server.jsonc')(fname)
		return root or vim.fn.fnamemodify(fname, ':p:h')
	end
}
