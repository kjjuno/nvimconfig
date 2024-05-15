return {
  "jose-elias-alvarez/null-ls.nvim",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local code_actions = null_ls.builtins.code_actions

    null_ls.setup({
      sources = {
        code_actions.shellcheck,
        diagnostics.flake8,
        diagnostics.shellcheck,
        diagnostics.vale,
        formatting.black,
        formatting.yamlfmt,
        -- formatting.csharpier,
        formatting.prettier,
        formatting.shellharden,
        formatting.stylua,
      },
    })

    local fmtId = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      group = fmtId,
      pattern = { "*.ts", "*.js", "*.lua", "*.cs" },
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
