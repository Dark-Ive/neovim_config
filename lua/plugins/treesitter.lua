
-- treesitter.nvim "archived"
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter").setup({
			hightlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			incremental_selection = {
				enable = true,
			}
		}) -- optional, defaults are fine

    require("nvim-treesitter").install({
      "json", "javascript", "html", "css", "bash",
      "lua", "markdown", "c", "cpp", "rust", "sql", "python",
    })

    local langs = { "json", "javascript", "html", "css", "bash",
      "lua", "markdown", "c", "cpp", "rust", "sql", "python" }

    vim.api.nvim_create_autocmd("FileType", {
      pattern = langs,
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    require("nvim-ts-autotag").setup()
  end,
}
