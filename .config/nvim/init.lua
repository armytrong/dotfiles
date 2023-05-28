require("plugins")
require("complete")
-- lualine
require('lualine').setup{
    options = { theme = 'gruvbox' }
}


-- tabs
vim.o.abstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true


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

-- git

require("vgit").setup()

vim.o.background="dark"
vim.cmd "colorscheme gruvbox"


local lsp = require("lspconfig")
lsp.jedi_language_server.setup({
    on_attach=on_attach,
    capabilities=capabilities
})
lsp.lua_ls.setup({
    on_attach=on_attach,
    capabilities=capabilities
})
lsp.clangd.setup({
    on_attach=on_attach,
    capabilities=capabilities
})
