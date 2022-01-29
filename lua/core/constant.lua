local M = {}

local funcs = require("core.funcs")

local home_path = os.getenv("HOME")
local vim_home_path = vim.fn.stdpath "config"
local data_path = string.format("%s/site/", vim.fn.stdpath "data")
local lsp_path = string.format("%s/", vim.fn.stdpath("data"))

M.os_name = funcs.get_os_name()

M.home = home_path

-- /home/mearnic/.local/share/nvim
M.data_site_path = vim.fn.stdpath "data" .. "/site"

M.cache_base_path = home_path .. "/.cache/nvim"
M.cache_dir_names = {
    "backup",
    "session",
    "swap",
    "tags",
    "undo"
}

return M
