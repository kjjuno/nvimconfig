return {
  "David-Kunz/jester",
  config = function()
    require("jester").setup({
      path_to_jest_run = './node_modules/.bin/jest',
      path_to_jest_debug = './node_modules/.bin/jest',
      dap = { -- debug adapter configuration
        type = 'pwa-node',
        request = 'launch',
        cwd = vim.fn.getcwd(),
        runtimeArgs = {'--inspect-brk', '$path_to_jest', '--no-coverage', '-t', '$result', '--', '$file'},
        args = { '--no-cache' },
        sourceMaps = true,
        protocol = 'inspector',
        skipFiles = {'<node_internals>/**/*.js'},
        console = 'integratedTerminal',
        port = 9229,
        disableOptimisticBPs = true
      }
    })
  end,
  keys = {
    { "<leader>jrc", function() require('jester').run() end, desc = "[J]est [R]un nearest test(s) under [C]ursor" },
    { "<leader>jrf", function() require('jester').run_file() end, desc = "[J]est [R]un current [F]ile" },
    { "<leader>jrl", function() require('jester').run_last() end, desc = "[J]est [R]un [L]ast test(s)" },

    { "<leader>jdc", function() require('jester').debug() end, desc = "[J]est [D]ebug nearest test(s) under [C]ursor" },
    { "<leader>jdf", function() require('jester').debug_file() end, desc = "[J]est [D]ebug current [F]ile" },
    { "<leader>jdl", function() require('jester').debug_last() end, desc = "[J]est [D]ebug [L]ast test(s)" },
  }
}
