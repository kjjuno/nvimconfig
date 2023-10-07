return {
    { "marko-cerovac/material.nvim", priority = 1000 },
    { "rose-pine/neovim", priority = 1000 },
    { "folke/tokyonight.nvim", priority = 1000 },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        "rose-pine/neovim",
        priority = 1000,
        lazy = false,
        config = function()
            vim.cmd([[colorscheme catppuccin]])

            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
}
