require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" }
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})  -- passing a func reference so don't use () to call func, buffer=0 -> only for this buffer
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gI", vim.lsp.buf.implementation, {buffer=0})
    -- rename symbols, not just search and replace
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
end

require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {
  capabilities = capabilities,
  on_attach = on_attach
}

