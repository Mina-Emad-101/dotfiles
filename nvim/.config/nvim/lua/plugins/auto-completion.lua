return {
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		config = function ()
			local ls = require("luasnip")
			-- vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
			vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
			vim.keymap.set({"i", "s"}, "<C-H>", function() ls.jump(-1) end, {silent = true})

			vim.keymap.set({"i", "s"}, "<C-J>", function()
				if ls.choice_active() then
					ls.change_choice(1)
				end
			end, {silent = true})
			-- vim.keymap.set({"i", "s"}, "<C-K>", function()
			-- 	if ls.choice_active() then
			-- 		ls.change_choice(-1)
			-- 	end
			-- end, {silent = true})

			local s = ls.s
			local fmt = require('luasnip.extras.fmt').fmt
			local i = ls.insert_node
			local t = ls.text_node
			local c = ls.choice_node
			local f = ls.function_node
			local rep = require('luasnip.extras').rep

			ls.add_snippets("all", {
				s("html", fmt("<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<title>{}</title>\n\t</head>\n\t<body>\n\t\t{}\n\t</body>\n</html>", { i(1), i(2) }))
			})
		ls.add_snippets("php", {
				s("relation", fmt("/**\n* @return {}<{}, $this>\n*/\npublic function {}(): {}\n{{\n\treturn $this->{}({}::class);\n}}", {
					i(1),
					i(2),
					f(function (text)
						if text[1][1] == "" then
							return ""
						end
						return string.lower(string.sub(text[1][1], 1, 1))..string.sub(text[1][1], 2, #text[1][1])
					end, {2}),
					rep(1),
					f(function (text)
						if text[1][1] == "" then
							return ""
						end
						return string.lower(string.sub(text[1][1], 1, 1))..string.sub(text[1][1], 2, #text[1][1])
					end, {1}),
					rep(2)
				}))
			})
		end
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-u>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<TAB>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
