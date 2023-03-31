local keymap = vim.keymap

-- Do not yank with x or c
keymap.set('n', 'x', '"_x')
keymap.set('n', 'c', '"_c')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word
keymap.set('n', 'dw', 'diw')

-- Tabs
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move windows

keymap.set('n', '<leader>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

-- Resize window
keymap.set('n', '<M-H>', '<C-w><')
keymap.set('n', '<M-L>', '<C-w>>')
keymap.set('n', '<M-K>', '<C-w>+')
keymap.set('n', '<M-J>', '<C-w>-')



keymap.set('n', 'sh', ':noh<CR>')
keymap.set('n', '<leader>h', ':noh<CR>')
keymap.set('n', '<M-Q>', ':qa!<CR>')

vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
vim.cmd("nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>")

keymap.set("n", "<M-S>", ":SymbolsOutline<CR>")
