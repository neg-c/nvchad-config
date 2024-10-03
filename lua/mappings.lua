require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<F5>", "<cmd> CMakeRun <cr>")
map({ "n", "i", "v" }, "<F9>", "<cmd> CMakeSelectLaunchTarget <cr>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
