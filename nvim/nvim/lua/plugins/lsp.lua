-- return {
--   "neovim/nvim-lspconfig",
--   opts = {
--     capabilities = (function()
--       local capabilities = vim.lsp.protocol.make_client_capabilities()
--       capabilities.textDocument.completion.completionItem.snippetSupport = true
--       capabilities.textDocument.completion.completionItem.preselectSupport = false -- 🔥 Disable preselection from LSP
--       return capabilities
--     end)(),
--   },
-- }
return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.sourcekit.setup {}
        end,
    }
}
