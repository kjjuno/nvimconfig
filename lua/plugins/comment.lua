return {
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    dependencies = {
      {
        "JoosepAlviste/nvim-ts-context-commentstring",
        lazy = true,
        opts = {
          enable_autocmd = false,
        },
      },
    },
    opts = {
      options = {
        custom_commentstring = function()
          -- check current buffer filetype
          local ft = vim.bo.filetype

          if ft == "typescriptreact" then
            return "{/* %s */}"
          end
          if ft == "cs" then
            return "// %s"
          end

          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
    },
  },
}
