return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting;
        local diagnostics = null_ls.builtins.diagnostics;
        local code_actions = null_ls.builtins.code_actions;

        null_ls.setup({
            sources = {
                code_actions.shellcheck,
                code_actions.cspell,
                diagnostics.cspell,
                diagnostics.eslint,
                diagnostics.flake8,
                diagnostics.shellcheck,
                diagnostics.vale,
                diagnostics.yamllint,
                formatting.black,
                formatting.yamlfmt,
                formatting.csharpier,
                formatting.prettier,
                formatting.shellharden,
                formatting.stylua,
            }
        })
    end
}
