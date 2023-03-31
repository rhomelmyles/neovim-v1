local status, n = pcall(require, 'which-key')
if (not status) then
  print("WK not added")
  return
end

n.setup()
