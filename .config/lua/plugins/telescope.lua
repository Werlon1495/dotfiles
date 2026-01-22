-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
      dependencies = { 'nvim-lua/plenary.nvim',
		{
      		'nvim-telescope/telescope-fzf-native.nvim',
      		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
    	},
  		},
	config = function()
    require('telescope').setup({
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
        },
      },
    })
    require('telescope').load_extension('fzf')
  end,
    }
