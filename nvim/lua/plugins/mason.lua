return {
    -- Mason for managing LSPs
    { "williamboman/mason.nvim", config = true },
    -- Mason-LSPConfig to bridge Mason with nvim-lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "elixirls", "pyright", "rust_analyzer", "ts_ls" },
                automatic_installation = true,
            })

            -- This will set up all the servers with their proper paths
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = require("cmp_nvim_lsp").default_capabilities(),
                        on_attach = function(client, bufnr)
                            if client.supports_method("textDocument/formatting") then
                                vim.api.nvim_create_autocmd("BufWritePre", {
                                    buffer = bufnr,
                                    callback = function()
                                        vim.lsp.buf.format({ async = false })
                                    end,
                                })
                            end
                        end,
                    })
                end,
            })
        end,
    },
    -- LSP Configuration
    {
        "neovim/nvim-lspconfig",
    },
}
