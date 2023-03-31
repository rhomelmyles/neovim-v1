vim.cmd('autocmd!')

vim.opt.laststatus = 3 -- global statusline



vim.scriptencoding    = 'utf-8'
vim.opt.encoding      = 'utf-8'
vim.opt.fileencoding  = 'utf-8'

vim.wo.relativenumber = true

vim.opt.title         = true
vim.opt.autoindent    = true
vim.opt.hlsearch      = true

vim.opt.backup        = false
vim.opt.showcmd       = true
vim.opt.cmdheight     = 1
-- vim.opt.laststatus    = 2
vim.expandtab         = true
vim.opt.scrolloff     = 2
vim.opt.shell         = 'bash'

vim.opt.backupskip    = '/tmp/*./private/tmp/*'
vim.opt.inccommand    = 'split'
vim.opt.ignorecase    = true
vim.opt.smarttab      = true
vim.opt.breakindent   = true
vim.opt.shiftwidth    = 2
vim.opt.tabstop       = 2
vim.opt.ai            = true
vim.opt.si            = true
vim.opt.wrap          = false
vim.opt.backspace     = 'start,eol,indent'
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

-- opt.smartindent = true
vim.opt.tabstop = 1
vim.opt.showtabline = 2
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 1
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.cindent = true


vim.opt.undofile = true
vim.o.undodir = '/tmp/.vim/.undodir'
-- Undercurl

vim.cmd [[
	let &t_Cs = "\e[4:3m"
	let &t_Cs = "\e[4:0m"
]]

-- Tyrn off paste mode when leaving insert

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste"
})

vim.opt.formatoptions:append { 'r' }

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.py" },
  command = "setlocal tabstop=2 shiftwidth=2"
})
