
--telescope.nvim
return {
	{
	    'nvim-telescope/telescope.nvim', version = '*',
	    dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 
			'nvim-telescope/telescope-fzf-native.nvim', build = 'make',
			"debugloop/telescope-undo.nvim",
		},
	    },
	    config = function()
		    require('telescope').setup({
				defaults = {
					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							prompt_position = "top",
						},
						vertical = {
							prompt_position = "top",
						},
					},
					sorting_strategy = "ascending",
				},
			})

		    local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		require("telescope").load_extension("undo")
    			vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
		end,
	},

}
