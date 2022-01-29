local M = {}

local funcs = require("core.funcs")
local constant = require("core.constant")
local packer = require("core.packer")

function M.verify_system()
    if(constant.os_name == 'Other') then
        print("您的系统不支持使用此配置!")
        return false;
    elseif (constant.os_name == 'Windows') then
        print("Windows 系统使用可能存在兼容问题!")
        return false;
    else
        return true;
    end
end

function M.create_cache_dir() 
    funcs.create_dir(constant.cache_base_path)
    for _, name in pairs(constant.cache_dir_names) do
        funcs.create_dir(constant.cache_base_path .. "/" .. name)
    end
end

function M.init_plugins()
    packer.clone_packer()
end

return M