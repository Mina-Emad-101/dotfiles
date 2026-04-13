return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local langs = {
			"html",
			"css",
			"python",
			"java",
			"javascript",
			"php",
			"blade",
			"c_sharp",
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"json",
			"markdown",
			"markup",
		}
		-- Highlight @foo.bar as "Identifier" only in Lua files
		-- vim.api.nvim_set_hl(0, "@tag.attribute.html", { link = "@spell" })
		-- vim.api.nvim_set_hl(0, "@tag.delimiter.html", { link = "@markup.heading" })

		require("nvim-treesitter").install(langs)

		vim.api.nvim_create_autocmd('FileType', {
			pattern = langs,
			callback = function()
				-- syntax highlighting, provided by Neovim
				vim.treesitter.start()
				-- folds, provided by Neovim
				vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
				vim.wo.foldmethod = 'expr'
				-- indentation, provided by nvim-treesitter
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
