local status, autopairs = pcall(require, 'nvim-autopairs')
if (not status) then
  print('No autopairs added')
end

autopairs.setup()
