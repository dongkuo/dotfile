---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<C-v>"] = {"<C-R>+"}
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-v>"] = {"\"+gP", "paste text to clipboard"}
  },
  v = {
    ["<C-c>"] = { "\"+y", "copy text to clipboard"},
    ["<C-v>"] = {"x\"+gP", "delete selected text and paste from clipboard"}
  },
  c = {
    ["<C-v>"] = {"<C-R>+", "copy text to clipboard"}
  }
}

-- more keybinds!

return M
