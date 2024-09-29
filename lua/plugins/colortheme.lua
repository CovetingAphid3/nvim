return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function(_, opts)
			require("kanagawa").setup(opts)
			vim.cmd("colorscheme kanagawa")
		end,
	},

	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		transparent = true,
	-- 		on_colors = function(colors)
	-- 			colors.error = "#ff0000"
	-- 			-- colors.bg = "#000000"
	-- 			colors.warning = "#ff8800"
	-- 		end,
	-- 	},
	-- 	config = function(_, opts)
	-- 		require("tokyonight").setup(opts)
	-- 		vim.cmd("colorscheme tokyonight")
	-- 	end,
	-- },
	-- {
	-- 	--rose-pine
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	--            styles = {
	--                transparency = true,
	--            },
	--            groups = {
	--                error ="#ff0000"
	--            },
	--        },
	-- 	config = function(_, opts)
	--            require("rose-pine").setup(opts)
	--            vim.cmd("colorscheme rose-pine")
	--
	--        end,
	-- },
	{
		"jnurmine/Zenburn",
	},
	{
		"RRethy/base16-nvim",
	},
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	--            transparent_background = true,
	--        },
	-- 	config = function(_, opts)
	-- 		require("catppuccin").setup(opts)
	-- 		vim.cmd("colorscheme catppuccin")
	-- 	end,
	-- },
}
