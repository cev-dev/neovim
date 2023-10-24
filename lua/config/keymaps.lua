local keymap = vim.keymap
local builtin = require('telescope.builtin')
-- General vim
keymap.set('n', '<space>', '<Nop>', {silent =true})

-- Lazy Vim 
keymap.set("n", "<leader>l", ":Lazy<CR>", {noremap = true, silent = true})


-- Telescopcope 
keymap.set("n", "<leader>gf", builtin.git_files, {desc = 'Search [G]it [F]iles'})
keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
keymap.set('n', '<leader><space>', builtin.buffers, {desc = '[ ] Find existing buffers'})
keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        windblend = 10,
        previewer = false,
    })
end, {desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
