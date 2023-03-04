icons = {
    diagnostics = {
        Error = "",
        Warn = "",
        Hint = "",
        Info = ""
    }
}

for type, icon in pairs(icons.diagnostics) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = "", texthl = hl, numhl = hl})
end

local opt = vim.opt

opt.completeopt = "menu,menuone,noselect"
opt.winaltkeys = "no"
opt.autoread = true
opt.number = true -- 显示行号
opt.clipboard = "unnamedplus"   -- 启用系统剪贴板
opt.swapfile = false  -- 无交换文件
opt.showmode = false -- 不显示当前模式
opt.mouse = "a" -- 开启鼠标
opt.scrolloff = 3  -- 滚动时距离底部始终2行
opt.cursorline = true -- 高亮当前行

opt.cindent = true -- c文件自动缩进
opt.showtabline = 2 -- 永久显示tabline
opt.wrap = false -- Disable line wrap

opt.sessionoptions = { "buffers", "curdir", "tabpages"}

-- tab为4个空格
opt.tabstop = 4 
opt.softtabstop = 4 
opt.shiftwidth = 4

-- 编码
opt.encoding = "utf-8"
-- opt.foldmethod = "marker"