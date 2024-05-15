return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  enabled = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader><leader>",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find Files",
    },
    {
      "<C-p>",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").git_files()
      end,
      desc = "Search Git Files",
    },
    {
      "<leader>ps",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
      end,
      desc = "[P]roject [S]earch",
    },
    {
      "<leader>tsr",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").resume()
      end,
      desc = "[T]elescope [S]earch [R]esume",
    },
    {
      "<leader>tps",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "[T]elescope [P]roject [S]earch",
    },
    {
      "<leader>tds",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      desc = "[T]elescope [D]ocument [S]ymbols",
    },
    {
      "<leader>tgc",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").git_commits()
      end,
      desc = "[T]elescope [G]it [C]ommits",
    },
    {
      "<leader>tgb",
      mode = { "n", "x", "o" },
      function()
        require("telescope.builtin").git_branches()
      end,
      desc = "[T]elescope [G]it [B]ranches",
    },
  },
}
