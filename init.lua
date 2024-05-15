require("config.options")
require("config.lazy")
require("config.autocmds")
require("config.keymaps")

-- vim.cmd("set rtp+=~/git/github/kjjuno/gen.nvim/")
--
-- require("gen").setup({
--   model = "llama3",
--   display_mode = "split",
--   -- show_model = true,
--   show_prompt = true,
--   no_auto_close = true,
-- })
--
-- vim.keymap.set({ "n", "v" }, "<leader>go", ":Gen<CR>")
-- vim.keymap.set({ "n", "v" }, "<leader>gc", ":Gen Chat<CR>")
-- vim.keymap.set({ "n", "v" }, "<leader>gm", function()
--   require("gen").select_model()
-- end)
-- vim.keymap.set({ "n", "v" }, "<leader>gp", function()
--   require("gen").kjjuno()
-- end)
