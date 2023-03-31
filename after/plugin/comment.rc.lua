local status, n = pcall(require, 'Comment')
if (not status) then
	return
end

local keymap = vim.keymap

keymap.set('n', '<Leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>')
keymap.set('v', '<Leader>/', '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')
