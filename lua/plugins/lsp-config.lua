return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "olrtg/nvim-emmet",
        config = function()
            vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Manually configure each server with vim.lsp.start
            -- These will be automatically managed by mason-lspconfig
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if client then
                        -- Set up keymaps when LSP attaches
                        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = args.buf })
                        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = args.buf })
                        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { buffer = args.buf })
                        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = args.buf })
                    end
                end,
            })

            -- Optional: Manual server configuration if needed
            -- vim.lsp.start({
            --     name = "gopls",
            --     cmd = { "gopls" },
            --     capabilities = capabilities,
            --     filetypes = { "go", "gomod", "gowork", "gotmpl" },
            --     root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
            --     settings = {
            --         gopls = {
            --             completeUnimported = true,
            --             usePlaceholders = true,
            --             analyses = {
            --                 unusedparams = true,
            --             },
            --         },
            --     },
            -- })
        end,
    },
}
