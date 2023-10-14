return {
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        vscode = true,
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump({search = { forward = true, wrap = false, multi_window = false}}) end, desc = "Flash" },
            { "<leader>S", mode = { "n", "o", "x" }, function() require("flash").jump({search = { forward = false, wrap = false, multi_window = false}}) end, desc = "Flash Backwards" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
   },
}
