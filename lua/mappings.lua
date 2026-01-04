require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Set leader key for debugging actions
vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end, { desc = 'DAP: Continue/Start' })
vim.keymap.set('n', '<leader>dn', function() require('dap').step_over() end, { desc = 'DAP: Step Over' })
vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end, { desc = 'DAP: Step Into' })
vim.keymap.set('n', '<leader>do', function() require('dap').step_out() end, { desc = 'DAP: Step Out' })
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end, { desc = 'DAP: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>dt', function() require('dap').terminate() end, { desc = 'DAP: Terminate Session' })
vim.keymap.set('n', '<leader>dr', function() require('dap').repl.open() end, { desc = 'DAP: Open REPL' })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
