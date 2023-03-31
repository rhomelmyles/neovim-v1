
local status, n = pcall(require, 'mason')
if (not status) then
	print("Mason not added")
	return
end

n.setup()
