
--blink.nvim

return {
{
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',

  opts = {
	signature = {
		window = {
			border = "rounded",
		},
	},
    keymap = { preset = 'default' },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    completion = { 
		documentation = { auto_show = false, window = { border = "rounded", }, },
		ghost_text = {
			enabled = false,
		},
		list = {
			selection = {
				preselect = false,
				auto_insert = false,
				},
			},
		},
         keymap = {
	      preset = "default",
	      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
	      ["<C-e>"] = { "hide", "fallback" },
	      ["<CR>"] = { "accept", "fallback" },

	      ["<Tab>"] = { "snippet_forward", "fallback" },
	      ["<S-Tab>"] = { "snippet_backward", "fallback" },

	      ["<Up>"] = { "select_prev", "fallback" },
	      ["<Down>"] = { "select_next", "fallback" },
	      ["<C-p>"] = { "select_prev", "fallback" },
	      ["<C-n>"] = { "select_next", "fallback" },

	      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
	      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
}
