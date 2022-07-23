local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

    -- lspservers with default config
    local servers = { 
        "html", "cssls", "jsonls", "tsserver", "eslint",
        "graphql",
        "cucumber_language_server",
        "bashls",
        "dockerls",
        "gopls",
        -- "java_language_server", "kotlin_language_server",
        "jedi_language_server",
        -- "rust_analyzer",
        -- "sqls",
        "tailwindcss",
        -- "terraformls",
        -- "vuels",
        "yamlls"
    }

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
        }
    end
end

return M