local status, n = pcall(require, 'lualine')
if (not status) then return end

n.setup()
