local opt = vim.opt
local g = vim.g

-- line numbers
opt.relativenumber = true
opt.number = true

-- 显示隐藏字符并修改 tab 和 trail 的显示
vim.opt.list = true
vim.opt.listchars = "tab:|\\ ,trail:▫"

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- cursor line
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"
opt.tw = 0
opt.indentexpr = ""
opt.foldmethod = "indent"
opt.foldlevel = 99

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- 将 - 视为单词的一部分
opt.iskeyword:append("-")

-- 在当前目录下执行命令
opt.autochdir = true

-- 自动换行
opt.wrap = true

-- 自动读取被外部修改的内容
opt.autoread = true

-- 光标到顶部和底部时保持 5 行距离
opt.scrolloff = 5

-- 下一次打开文件时恢复光标位置
vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])

-- 关闭 perl 支持
g.loaded_perl_provider = 0

-- 关闭 ruby 支持
g.loaded_ruby_provider = 0

-- 设置 python 路径
g.python3_host_prog = "/usr/bin/python3"
