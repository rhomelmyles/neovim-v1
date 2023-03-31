require('base')
require('highlights')
require('plugins')
require('maps')

local theme_status, _ = pcall(require, 'tokyodark')
if theme_status then
  vim.g.tokyodark_enable_italic_comment = true
  vim.g.tokyodark_enable_italic = true
  vim.g.tokyodark_color_gamma = "1.0"
  vim.cmd("colorscheme tokyodark")
end

vim.g.mapleader = " "

-- has = function(x)
--   return vim.fn.has(x) == 1
-- end
