Vim�UnDo� �4	��%x����U,3뾗���%��M��   4       5          ,       ,   ,   ,    fVO   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             fUЇ     �                   5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fUЉ     �               5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             fUЊ     �               �               5��                                         �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             fUЋ     �                 5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fUЛ     �                return   {�               	{5��                                                �                                                �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fUО     �                 	},5��                         �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       fUР     �               1		'nvim-telescope/telescope.nvim', tag = '0.1.6',   6		-- or                            , branch = '0.1.x',   ,		requires = { { 'nvim-lua/plenary.nvim' } }5��                         	                     �                         :                     �                         p                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                V       fUУ     �                 	}5��                          �                      5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                V       fU��     �               +	requires = { { 'nvim-lua/plenary.nvim' } }5��                        q                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                V       fU��    �               0	'nvim-telescope/telescope.nvim', tag = '0.1.6',5��       !                *                     5�_�   
                   /    ����                                                                                                                                                                                                                                                                                                                                                V       fU�\     �      	         	config = function�               /	dependencies = { { 'nvim-lua/plenary.nvim' } }5��       /                  �                      �       0                 �                      �                         �                      �       
                 �                     �       
                 �                     �       
                  �                      �       
                 �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       fU�a     �         	    �         	    5��                          �               �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       fU�c    �      	         	config = function ()   ,local builtin = require('telescope.builtin')   ,local actions = require('telescope.actions')�   	            require("telescope").setup {   	pickers = {   		find_files = {   			mappings = {   					i = {   1					["<C-Q>"] = actions.send_selected_to_qflist,�               		},   	},   }�             	   9vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   8vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})   =-- vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})   6vim.keymap.set('n', '<leader>fb', builtin.buffers, {})   8vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})   8vim.keymap.set('n', '<leader>fr', builtin.registers, {})   vim.opt.splitright = true   vim.opt.splitbelow = true   		5��                       �      �      �      �                        �                     �    	          0               �       �       �                       �       1       4       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V   	    fU�     �                !	'nvim-telescope/telescope.nvim',   	tag = '0.1.6',   5	-- or                            , branch = '0.1.x',   0	dependencies = { { 'nvim-lua/plenary.nvim' } },   	config = function()   .		local builtin = require('telescope.builtin')   .		local actions = require('telescope.actions')       		require("telescope").setup {   			pickers = {   				find_files = {   					mappings = {   						i = {   3							["<C-Q>"] = actions.send_selected_to_qflist,   						},   					},   				},   			},   		}       ;		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   :		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})   ?		-- vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})   8		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})   :		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})   :		vim.keymap.set('n', '<leader>fr', builtin.registers, {})   		vim.opt.splitright = true   		vim.opt.splitbelow = true   	end5��                          	       f              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V   	    fU�     �             �                	{   	}�               	�             5��                          	                      �                          	                      �                                              �                                                �                                              �                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V   	    fU�     �      !       �             5��                                         f      5�_�                            ����                                                                                                                                                                                                                                                                                                                            "          "          V   	    fU�     �                 5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                            !          !          V   	    fU�     �   !   #   #    �       #          	{   	}�      #   "      	}    �       "   "      	�       "   !    5��                           u                     �                           u                     �                         t                     �                         t                     �                        u                     �                          w                     �                         x                     �    !                      y                     �    !                     y                    �    !                      y                     5�_�                   "        ����                                                                                                                                                                                                                                                                                                                            $          $          V   	    fU�     �   !   %   $       �   "   #   $    5��    !                      y                     �    !                 *   {             *       �    !   ,                 �                     �    "                     �                     �    "                    �                     �    #                     �                     5�_�                   #       ����                                                                                                                                                                                                                                                                                                                            &          &          V   	    fU��     �   #   %   &    5��    #                      �                     �    #                     �                    �    #                      �                     5�_�                    $        ����                                                                                                                                                                                                                                                                                                                            '          '          V   	    fU��     �   #   >   '       �   $   %   '    5��    #                  0   �              �      5�_�                    $        ����                                                                                                                                                                                                                                                                                                                            @          @          V   	    fU��    �      
   @      !	'nvim-telescope/telescope.nvim',   	tag = '0.1.6',   5	-- or                            , branch = '0.1.x',   0	dependencies = { { 'nvim-lua/plenary.nvim' } },   	config = function()   .		local builtin = require('telescope.builtin')   .		local actions = require('telescope.actions')�   
      ?      		require("telescope").setup {   			pickers = {   				find_files = {   					mappings = {   						i = {   3							["<C-Q>"] = actions.send_selected_to_qflist,�         @      			},   		}�          @   	   ;		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   :		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})   ?		-- vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})   8		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})   :		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})   :		vim.keymap.set('n', '<leader>fr', builtin.registers, {})   		vim.opt.splitright = true   		vim.opt.splitbelow = true   	end�   "   *   @      		config = function ()   require("telescope").setup {     extensions = {       ["ui-select"] = {   0      require("telescope.themes").get_dropdown {           -- even more opts         }�   *   >   @      N      -- pseudo code / specification for writing custom displays, like the one         -- for "codeactions"         -- specific_opts = {         --   [kind] = {   D      --     make_indexed = function(items) -> indexed_items, width,   ;      --     make_displayer = function(widths) -> displayer   >      --     make_display = function(displayer) -> function(e)   1      --     make_ordinal = function(e) -> string         --   },   M      --   -- for example to disable the custom builtin "codeactions" display         --      do the following         --   codeactions = false,   
      -- }       }     }   }   G-- To get ui-select loaded and working with telescope, you need to call   2-- load_extension, somewhere after setup function:   0require("telescope").load_extension("ui-select")5��    *                    U      �      �      �    "                  �      �       �       �                       �      �      �      �                        �                     �    
         2               �       �       �                              �       �       5�_�                    +        ����                                                                                                                                                                                                                                                                                                                            +          7   
       V       fU��     �   *   +          N						-- pseudo code / specification for writing custom displays, like the one   						-- for "codeactions"   						-- specific_opts = {   						--   [kind] = {   D						--     make_indexed = function(items) -> indexed_items, width,   ;						--     make_displayer = function(widths) -> displayer   >						--     make_display = function(displayer) -> function(e)   1						--     make_ordinal = function(e) -> string   						--   },   M						--   -- for example to disable the custom builtin "codeactions" display   						--      do the following   						--   codeactions = false,   
						-- }5��    *                      t      3              5�_�                     *        ����                                                                                                                                                                                                                                                                                                                            +          +   
       V       fU��     �   )   *           5��    )                      s                     5�_�      %               (       ����                                                                                                                                                                                                                                                                                                                            *          *   
       V       fU��     �   '   (          							-- even more opts5��    '                      R                     5�_�       &   !       %   (       ����                                                                                                                                                                                                                                                                                                                            )          )   
       V       fU�    �   &   (   1      0						require("telescope.themes").get_dropdown {   }�   '   )   1      						}5��    '                      R                     �    &   0                  Q                     5�_�   %   '           &   +       ����                                                                                                                                                                                                                                                                                                                            (          (   
       V       fU�"    �   *   +          J			-- To get ui-select loaded and working with telescope, you need to call   5			-- load_extension, somewhere after setup function:5��    *                      e      �               5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                                             fV<a   	 �         .      "		'nvim-telescope/telescope.nvim',   		tag = '0.1.6',�         .      1		dependencies = { { 'nvim-lua/plenary.nvim' } },�      
   .      /			local builtin = require('telescope.builtin')   /			local actions = require('telescope.actions')�   
      .      			require("telescope").setup {�         .      			}�         .      <			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   ;			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})�         .      9			vim.keymap.set('n', '<leader>fb', builtin.buffers, {})   ;			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})   ;			vim.keymap.set('n', '<leader>fr', builtin.registers, {})�          .      		end�   #   %   .      			require("telescope").setup {�   &   +   .      1						require("telescope.themes").get_dropdown {}   					}   				}   			}�   +   .   .      		end   	}5��    +                  �                    �    &   .               O                    �    #                    �                    �                         �                     �             #      #   �      �       �       �             #      #   �      N       N       �                         �                     �    
                    =                    �             .      .   �       C       C       �                        �                     �                             0       0       5�_�   '   )           (   -       ����                                                                                                                                                                                                                                                                                                                                                             fVN�     �   .   0   1      		�   .   0   0    �   -   0          	{   	}�   -   0   /      	�   -   /   .    5��    -                      �                     �    -                     �                     �    -                    �                     �    .                      �                     �    .                     �                    �    .                     �                     5�_�   (   *           )   /       ����                                                                                                                                                                                                                                                                                                                                                             fVN�     �   .   0   1      		�   /   0   1    5��    .                     �                     5�_�   )   +           *   /       ����                                                                                                                                                                                                                                                                                                                                                             fVN�     �   .   2   1      		"MaximilianLloyd/ascii.nvim"5��    .                     �                     �    .                    �                     �    /                     �                     �    /                    �                     �    0                     �                     5�_�   *   ,           +   0       ����                                                                                                                                                                                                                                                                                                                                                             fVN�     �   0   2   4      			�   0   2   3    5��    0                      �                     �    0                  /   �             /       5�_�   +               ,   1   -    ����                                                                                                                                                                                                                                                                                                                                                             fVO   
 �   1   4   4      		end   	}�   4               �               4   return {   	{   "		"nvim-telescope/telescope.nvim",   		tag = "0.1.6",   6		-- or                            , branch = '0.1.x',   1		dependencies = { { "nvim-lua/plenary.nvim" } },   		config = function()   /			local builtin = require("telescope.builtin")   /			local actions = require("telescope.actions")       			require("telescope").setup({   				pickers = {   					find_files = {   						mappings = {   							i = {   4								["<C-Q>"] = actions.send_selected_to_qflist,   								},   						},   					},   				},   			})       <			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})   ;			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})   @			-- vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})   9			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})   ;			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})   ;			vim.keymap.set("n", "<leader>fr", builtin.registers, {})   			vim.opt.splitright = true   			vim.opt.splitbelow = true   		end,   	},   	{   ,		"nvim-telescope/telescope-ui-select.nvim",   		config = function()   			require("telescope").setup({   				extensions = {   					["ui-select"] = {   3						require("telescope.themes").get_dropdown({}),   					},   				},   			})   3			require("telescope").load_extension("ui-select")   		end,   	},   	{   		"MaximilianLloyd/ascii.nvim",   		config = function()   /			require("telescope").load_extension("ascii")   		end   	}   }5��            3      4                           �    4                                           �    1                                      5�_�       "       %   !   (       ����                                                                                                                                                                                                                                                                                                                            (          (   
       V       fU��     �   '   )        5��    '                      R                     5�_�   !   #           "   '   0    ����                                                                                                                                                                                                                                                                                                                            '   :       '   9       V       fU��     �   &   (   0      /						require("telescope.themes").get_dropdown �   &   )   0      .						require("telescope.themes").get_dropdown5��    &   /                  P                     �    &   /                  P                     �    &   /                  P                     �    &   .                  O                     5�_�   "   $           #   '   .    ����                                                                                                                                                                                                                                                                                                                            '   :       '   9       V       fU��     �   &   (   /      0						require("telescope.themes").get_dropdown{}5��    &   .                  O                     5�_�   #               $   '   .    ����                                                                                                                                                                                                                                                                                                                            '   :       '   9       V       fU��    �   &   (   /      1						require("telescope.themes").get_dropdown {}5��    &   .                  O                     5�_�                    #       ����                                                                                                                                                                                                                                                                                                                            ?          ?          V   	    fU��     �   #   $   &    �   "   $   &      !		conrequire("telescope").setup {     extensions = {       ["ui-select"] = {   0      require("telescope.themes").get_dropdown {           -- even more opts         }       N      -- pseudo code / specification for writing custom displays, like the one         -- for "codeactions"         -- specific_opts = {         --   [kind] = {   D      --     make_indexed = function(items) -> indexed_items, width,   ;      --     make_displayer = function(widths) -> displayer   >      --     make_display = function(displayer) -> function(e)   1      --     make_ordinal = function(e) -> string         --   },   M      --   -- for example to disable the custom builtin "codeactions" display         --      do the following         --   codeactions = false,   
      -- }       }     }   }   G-- To get ui-select loaded and working with telescope, you need to call   2-- load_extension, somewhere after setup function:   Arequire("telescope").load_extension("ui-select")fig = function ()5��    "                 0   �              �      5�_�                    "        ����                                                                                                                                                                                                                                                                                                                            $          $          V   	    fU�     �   "   #   $    �   !   #   $      'nvim-telescope/telescope-ui-select.nvim5��    !                   '   y              '       5�_�   
                       ����                                                                                                                                                                                                                                                                                                                                                V       fU��     �               	-- or5��              /           A       /               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       fU��     �               	--5��                          B                      �                         E                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       fU��     �               	5��                         C                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       fU��     �             �               		requires5��                         C                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       fU��     �             �               	--5��                         C                      5��