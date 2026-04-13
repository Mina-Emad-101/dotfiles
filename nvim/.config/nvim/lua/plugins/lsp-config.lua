return {
	{ "folke/neodev.nvim" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					-- "pylsp",
					"pyright",
					-- "jdtls",
					-- "java_language_server",
					"html",
					"cssls",
					-- "phpactor",
					"intelephense",
					-- "stimulus_ls",
					"clangd",
					"ts_ls",
				},
				handlers = {
					-- require("lsp-zero").default_setup,
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"nvim-java/nvim-java",
			"ionide/Ionide-vim",
		},
		config = function()
			require("neodev").setup()
			require("java").setup({
				jdtls = {
					java_opts = {
						"-Xms128m",
						"-Xmx1024m",
					},
				},
				lombok = {
					enable = true,
				},

				java_test = {
					enable = true,
				},

				java_debug_adapter = {
					enable = false,
				},

				spring_boot_tools = {
					enable = true,
				},

				-- JDK installation
				jdk = {
					auto_install = true,
				},
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local border = {
				{ "╭", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "╮", "FloatBorder" },
				{ "│", "FloatBorder" },
				{ "╯", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "╰", "FloatBorder" },
				{ "│", "FloatBorder" },
			}

			local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
			function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
				opts = opts or {}
				opts.border = opts.border or border
				return orig_util_open_floating_preview(contents, syntax, opts, ...)
			end

			vim.lsp.config('lua_ls', {
				capabilities = capabilities,
			})
			-- vim.lsp.config('pylsp', {
			-- 	capabilities = capabilities
			-- })
			vim.lsp.config('pyright', {
				capabilities = capabilities,
			})
			-- vim.lsp.config('jdtls', {
			-- 	capabilities = capabilities,
			-- })
			-- vim.lsp.config('java_language_server', {
			-- 	capabilities = capabilities,
			-- })
			-- vim.lsp.config('phpactor', {
			-- 	capabilities = capabilities,
			-- })
			vim.lsp.config('intelephense', {
				capabilities = capabilities,
			})
			-- vim.lsp.config('stimulus_ls', {
			-- 	capabilities = capabilities
			-- })
			vim.lsp.config('html', {
				capabilities = capabilities,
			})
			vim.lsp.config('cssls', {
				capabilities = capabilities,
			})
			vim.lsp.config('clangd', {
				capabilities = capabilities,
			})
			vim.lsp.config('ts_ls', {
				capabilities = capabilities,
			})

			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, {})
			vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, {})
			vim.keymap.set("n", "<leader>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, {})
			vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
			vim.keymap.set("n", "==", vim.lsp.buf.format, {})
			vim.keymap.set("v", "=", function()
				vim.lsp.buf.format()
				vim.api.nvim_feedkeys("", "m", false)
			end, {})

			-- My Extras
			vim.keymap.set("n", "<F1>", vim.lsp.buf.code_action, {})
			vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, {})

			-- Java
			vim.keymap.set("n", "<leader>jr", ":JavaRunnerRunMain<CR>", {})
			vim.keymap.set("n", "<leader>js", ":JavaRunnerStopMain<CR>", {})
			vim.keymap.set("n", "<leader>jt", ":JavaRunnerToggleLogs<CR>", {})
		end,
	},
}
