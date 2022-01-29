local core = require("core.core")

core.verify_system()

if(core.verify_system() == true) then
    -- 创建缓存文件目录
    core.create_cache_dir()

    -- 初始化插件管理器
    core.init_plugins()

end