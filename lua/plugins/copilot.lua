return {
  {
    "github/copilot.vim",
    enabled=true,
    config = function()
      vim.g.copilot_filetypes = {
        ["*"] = true,
      }
    end,
    keys = {
      { "<leader>cpp", "<cmd>Copilot panel<cr>", mode = { "n", "x" } },
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    enabled=true,
    branch = "canary",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "github/copilot.vim" },
    },
    opts = {
      defer = true,
    },
    keys = {
      { "<leader>cpc", "<cmd>CopilotChat<cr>",       mode = { "n", "x" } },
      { "<leader>cpd", "<cmd>CopilotChatDocs<cr>",   mode = { "n", "x" } },
      { "<leader>cpt", "<cmd>CopilotChatTests<cr>",  mode = { "n", "x" } },
      { "<leader>cpm", "<cmd>CopilotChatCommitStaged<cr>", mode = { "n", "x" } },
    },
  },
}
