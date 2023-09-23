local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

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

vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
