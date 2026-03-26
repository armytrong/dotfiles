require "keybinds"

-- lualine
require('lualine').setup {
    options = { theme = 'powerline' }
}

vim.o.background = "dark" -- or "light" for light mode
vim.cmd('colorscheme tokyonight')


-- tabs
vim.o.tabstop = 20
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true

vim.o.laststatus = 3

vim.cmd('set grepprg=grep\\ -nH\\ $*')
vim.cmd('let g:tex_flavor = "latex"')

-- VimTeX:

vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
vim.g.vimtex_compiler_method = 'latexmk'

