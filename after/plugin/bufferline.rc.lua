local status, n = pcall(require, 'bufferline')
if (not status) then 
	print("Buffer line not added")
	return 
end

vim.opt.termguicolors = true
n.setup({
	options = {
		mode = 'tabs',
		separator_style = 'slant',
		always_show_bufferline = true,
		show_buffer_close_icons = false,
		show_close_icons = false,
	}
})


vim.api.nvim_set_keymap('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', {})

