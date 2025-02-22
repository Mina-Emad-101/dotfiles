return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		-- or                            , branch = '0.1.x',
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			local builtin = require("telescope.builtin")
			local actions = require("telescope.actions")

			require("telescope").setup({
				pickers = {
					find_files = {
						mappings = {
							i = {
								["<C-Q>"] = actions.send_selected_to_qflist,
							},
						},
					},
				},
			})

			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			-- vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>fr", builtin.registers, {})
			vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
			vim.keymap.set("n", "<leader>fp", builtin.registers, {})
			vim.opt.splitright = true
			vim.opt.splitbelow = true
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"MaximilianLloyd/ascii.nvim",
		config = function()
			require("telescope").load_extension("ascii")
		end,
	},
	{
		"nosduco/remote-sshfs.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		opts = {
			-- Refer to the configuration section below
			-- or leave empty for defaults
		},
		config = function()
			require("remote-sshfs").setup()
			require("telescope").load_extension("remote-sshfs")

			local api = require("remote-sshfs.api")
			vim.keymap.set("n", "<leader>rc", api.connect, {})
			vim.keymap.set("n", "<leader>rd", api.disconnect, {})
			vim.keymap.set("n", "<leader>re", api.edit, {})
			vim.keymap.set("n", "<leader>rff", api.find_files, {})
			vim.keymap.set("n", "<leader>rfg", api.live_grep, {})
		end,
	}
}
