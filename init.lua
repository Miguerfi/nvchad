local autocmd = vim.api.nvim_create_autocmd
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- require('gitblame').setup {
--      --Note how the `gitblame_` prefix is omitted in `setup`
--     enabled = false,
-- }
-- require("rainbow_delimiters")
-- local rainbow_delimiters = require("rainbow-delimiters").setup()
--
-- vim.g.rainbow_delimiters = {
--   strategy = {
--     [""] = rainbow_delimiters.strategy["global"],
--     vim = rainbow_delimiters.strategy["local"],
--   },
--   query = {
--     [""] = "rainbow-delimiters",
--     lua = "rainbow-blocks",
--   },
--   highlight = {
--     "RainbowDelimiterRed",
--     "RainbowDelimiterYellow",
--     "RainbowDelimiterBlue",
--     "RainbowDelimiterOrange",
--     "RainbowDelimiterGreen",
--     "RainbowDelimiterViolet",
--     "RainbowDelimiterCyan",
--   },
-- }
--
vim.cmd [[autocmd VimEnter * GitBlameToggle]]
-- Carrega o plugin no início do Neovim

-- Função para executar o comando do plugin após o Neovim iniciar completamente
-- local function executePluginCommand()
--   vim.cmd(":GitBlameEnabled")
-- end
--
-- -- Vincula a função ao evento VimEnter para executá-la após a inicialização
-- vim.cmd("autocmd VimEnter * lua executePluginCommand()")

-- Função para executar o comando do plugin após o Neovim iniciar completamente

vim.g.gitblame_enabled = true
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})






-- Auto format on save
autocmd("BufWritePre", {
  pattern = { "*.js", "*.java", "*.lua" },
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
