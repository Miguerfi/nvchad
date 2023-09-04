---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gatekeeper",
  theme_toggle = { "catppuccin", "one_light" },
  statusline = {
    theme = "vscode_colored",
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"
if vim.bo.filetype == "python" then
  M.ui.theme = "gatekeeper" -- Defina o esquema de cores TokyoNight aqui
end
-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
