return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting;
        local diagnostics = null_ls.builtins.diagnostics;
        local code_actions = null_ls.builtins.code_actions;

        null_ls.setup({
            sources = {
                diagnostics.eslint,
                diagnostics.flake8,
                diagnostics.vale,
                diagnostics.yamllint,
                diagnostics.shellcheck,
                formatting.black,
                formatting.csharpier,
                formatting.prettier,
                formatting.stylua,
                formatting.shellharden,
                code_actions.shellcheck,
            }
        })
    end
}
