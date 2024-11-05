return {

    -- {
    -- 	"aktersnurra/no-clown-fiesta.nvim",
    -- 	lazy = false,
    -- 	priority = 1000,
    -- 	opts = {
    -- 		transparent = true,
    -- 	},
    -- 	config = function(_, opts)
    -- 		require("no-clown-fiesta").setup(opts)
    -- 		vim.cmd("colorscheme no-clown-fiesta")
    -- 	end,
    -- },
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = {
                bg = true,
                float = true
            },
        },
        config = function(_, opts)
            require("nordic").setup(opts)
            vim.cmd("colorscheme nordic")
        end,
    },


    -- {
    --     --rose-pine
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {
    --         styles = {
    --             transparency = true,
    --         },
    --         groups = {
    --             error = "#ff0000"
    --         },
    --     },
    --     config = function(_, opts)
    --         require("rose-pine").setup(opts)
    --         vim.cmd("colorscheme rose-pine")
    --     end,
    -- },
    {
        "jnurmine/Zenburn",
    },
    {
        "RRethy/base16-nvim",
    },
}
