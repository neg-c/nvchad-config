---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.cmake = {
  n = {
    ["<F5>"] = { "<cmd> CMakeRun <CR>" },
    ["<F9>"] = { "<cmd> CMakeSelectLaunchTarget <CR>" },
  },
}

M.dap = {
  n = {
    ["<leader>dp"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dr"] = { "<cmd> DapContinue <CR>" },
  },
}

-- more keybinds!

return M
