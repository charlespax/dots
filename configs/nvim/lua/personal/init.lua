require("personal.remap")

-- Line Numbers
-------------------------------------------------------------------------------
vim.opt.number = true
vim.opt.relativenumber = true

-- Cursor Properties
-------------------------------------------------------------------------------
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 999

-- Tabs
-------------------------------------------------------------------------------
vim.opt.expandtab = true  -- convert tabs into spaces
--vim.opt.shiftwidth = 8
--vim.opt.tabstop = 8

-- Colors
-------------------------------------------------------------------------------
--vim.opt.termguicolors = true
termguicolors = true
vim.cmd 'highlight ColorColumn ctermbg=234'
vim.cmd 'highlight CursorLine ctermbg=234'
vim.cmd 'highlight CursorColumn ctermbg=234'
vim.cmd 'colorscheme habamax'
--vim.cmd 'colorscheme lunaperche'
--vim.cmd 'colorscheme pablo'
--vim.cmd 'colorscheme slate'

-- Other UI stuff
-------------------------------------------------------------------------------
-- vim.opt.cmdheight = 2
vim.opt.foldcolumn = "1"
