--[[ this is a commen
on multiple lines
--]]

require("user.remap")

-- [[ UI Elements ]] ----------------------------------------------------------
vim.opt.cmdheight = 2             -- command area at bottom of screen
vim.opt.foldcolumn = "1"          -- space at left of screen

vim.opt.number = true             -- line numbers are shown
vim.opt.relativenumber = true     -- line numbers are relative

vim.opt.cursorline = true         -- horizontal line at cursor
vim.opt.cursorcolumn = true       -- vertical line at cursor
vim.opt.colorcolumn = "80"        -- vertical line at defined location

vim.opt.scrolloff = 999           -- always snow n lines above and below cursor

-- [[ Tabs ]] -----------------------------------------------------------------
vim.opt.expandtab = true

-- [[ Colors ]] ---------------------------------------------------------------
termguicolors = true
vim.cmd 'colorscheme lunaperche'

-- [[ Auto Commands ]] --------------------------------------------------------
vim.api.nvim_create_autocmd('TextYankPost', {
        desc = 'Highlight when yanking (copying) text',
        group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
        callback = function()
                vim.highlight.on_yank()
        end,
})

-- [[ Other ]] ----------------------------------------------------------------
vim.opt.mouse = 'a'               -- enable mouse input
vim.opt.clipboard = 'unnamedplus' -- share clipboard with operating system
vim.opt.ignorecase = true         -- case-insensitive search
vim.opt.smartcase = true          -- case-insensitive search
--vim.opt.signcolumn = 'yes'        -- signcolumn on by default
