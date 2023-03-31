local status, n = pcall(require, 'hop')
if (not status) then
  print("Hop not added")
  return
end

n.setup()

vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
