vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- Access MiniPairs config table
local npairs = require 'mini.pairs'
-- Remove the single quote pair from tex filetype
npairs.unmap('i', "'", "'")
