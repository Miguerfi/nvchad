---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.troubles = {
  n = {
    ["<leader>lp"] = { "<cmd>Trouble document_diagnostics <CR>", "Trouble document diagnostic" },
    ["<leader>la"] = { "<cmd>Trouble workspace_diagnostics <CR>", "Trouble workspace diagnostic " },
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "LazyGit" },
  },
}
-- more keybinds!
return M
