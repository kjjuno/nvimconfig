return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_filetypes = {
      ["*"] = true,
    }

    vim.keymap.set("n", "<leader>cs", "<cmd>Copilot panel<cr>")
  end,
}
