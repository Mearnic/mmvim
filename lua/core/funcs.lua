local M = {}

function M.create_dir(dir) 
    if vim.fn.isdirectory(dir) == 0 then
        os.execute("mkdir -p " .. dir)
    end
end

function M.file_not_exists(file) 
    return vim.fn.empty(vim.fn.glob(file)) > 0
end

function M.git_clone_file(url, path) 
    return vim.fn.system {"git", "clone", "--depth", "1", url, path}
end


function M.get_os_name() 
    local os_name = vim.loop.os_uname().sysname
    if os_name == "Darwin" then
        return "macOS"
    elseif os_name == "Linux" then
        return "Linux"
    elseif os_name == "Windows" then
        return "Windows"
    else
        return "Other"
    end
end

return M