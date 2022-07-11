local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local code_actions = null_ls.builtins.code_actions

local completion = null_ls.builtins.completion

-- https://github.com/prettier-solidity/prettier-plugin-solidity
-- npm install --save-dev prettier prettier-plugin-solidity
null_ls.setup {
  debug = false,
  sources = {
        -- formatting.prettier,
        formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
        formatting.black.with({ filetype = "python" }),
        formatting.stylua,
        formatting.cmake_format,
        -- formatting.codespell,
        -- formatting.djlint,
        -- formatting.eslint,
        -- formatting.gofmt,
        -- formatting.google_java_format,
        -- formatting.ktlint,
        formatting.lua_format,
        formatting.markdownlint,
        formatting.prettier, -- Filetypes: { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html", "json", "jsonc", "yaml", "markdown", "graphql", "handlebars" }
        -- formatting.sqlformat,
        -- formatting.terrafmt,
        -- formatting.xmllint,
        -- completion.vsnip,
        completion.spell,
        completion.luasnip,
        -- completion.tags,
        -- code_actions.eslint,
        -- code_actions.gitrebase,
        -- code_actions.gitsigns,
        -- code_actions.proselint,
        -- code_actions.refactoring,
        -- code_actions.shellcheck,
        -- code_actions.statix,
        -- code_actions.xo,
        -- diagnostics.actionlint,
        -- diagnostics.alex,
        -- diagnostics.ansiblelint,
        -- diagnostics.buf,
        -- diagnostics.buildifier,
        -- diagnostics.cfn_lint,
        -- diagnostics.checkmake,
        -- diagnostics.credo, -- elixir
        -- diagnostics.cspell,
        -- diagnostics.djlint, -- HTML Template Linter and Formatter.
        -- diagnostics.editorconfig_checker,
        -- diagnostics.erb_lint,
        -- diagnostics.eslint,
        diagnostics.fish,
        -- diagnostics.flake8,
        -- diagnostics.gitlint,
        -- diagnostics.golangci_lint,
        -- diagnostics.hadolint, -- A smarter Dockerfile linter that helps you build best practice Docker images.
        -- diagnostics.jsonlint, -- A pure JavaScript version of the service provided at jsonlint.com
        -- diagnostics.ktlint,
        -- diagnostics.luacheck,
        -- diagnostics.markdownlint,
        -- diagnostics.pylint,
        -- diagnostics.standardjs,
        diagnostics.tsc,
        -- diagnostics.xo,
        -- diagnostics.yamllint,
        diagnostics.zsh
    },
}


-- Sourecs: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
