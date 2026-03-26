local on_attach = require "keybinds.on_lsp_attach"
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("jedi_language_server", {
    on_attach = on_attach,
    capabilities = capabilities
})
vim.lsp.enable("jedi_language_server")

vim.lsp.config("clangd", {
    on_attach = on_attach,
    capabilities = capabilities
})
vim.lsp.enable("clangd")

vim.lsp.config("texlab", {
    on_attach = on_attach,
    capabilities = capabilities
})
vim.lsp.enable("texlab")

vim.lsp.config("jsonls", {
    on_attach = on_attach,
    capabilities = capabilities
})
vim.lsp.enable("jsonls")
