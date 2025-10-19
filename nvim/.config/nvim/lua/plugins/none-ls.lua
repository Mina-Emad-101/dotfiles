return {
			"nvimtools/none-ls.nvim",
			config = function()
				local null_ls = require("null-ls")
				local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

				null_ls.setup({
					on_attach = function(client, bufnr)
						if client.supports_method("textDocument/formatting") then
							vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
							vim.api.nvim_create_autocmd("BufWritePre", {
								group = augroup,
								buffer = bufnr,
								callback = function()
									-- vim.lsp.buf.format()
								end,
							})
						end
					end,

					sources = {
						null_ls.builtins.formatting.stylua,
						-- null_ls.builtins.formatting.pint,
						null_ls.builtins.formatting.blade_formatter,
						null_ls.builtins.formatting.prettierd.with({
							tabWidth = 4,
						}),
						null_ls.builtins.diagnostics.phpstan.with({
							filetypes = { "php" },
						}),
						-- null_ls.builtins.completion.spell,
						-- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
					},
				})
			end,
		}
