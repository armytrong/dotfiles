require("plugins")
require("complete")
-- lualine
require('lualine').setup{
    options = { theme = 'powerline' }
}


-- tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true

vim.o.laststatus = 3


-- complete

require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})


local lsp = require("lspconfig")
lsp.jedi_language_server.setup({on_attach=on_attach})
lsp.lua_ls.setup{
    on_attach = on_attach,
    capabilities = capabilities
}
lsp.clangd.setup{
    on_attach = on_attach,
    capabilities = capabilities
}
lsp.texlab.setup{
    on_attach = on_attach,
    capabilities = capabilities
}

vim.cmd('set grepprg=grep\\ -nH\\ $*')
vim.cmd('let g:tex_flavor = "latex"')
