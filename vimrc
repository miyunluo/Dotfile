" 开启文件类型检测
filetype on

""""""""""""""""" vundle 环境配置
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
call vundle#end()
filetype plugin indent on

""""""""""""""""" 界面优化
" 显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 显示行号
set number
" 鼠标支持
set mouse=a
" 高亮显示当前行
set cursorline
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

""""""""""""""""" 代码格式
set ts=4
" 制表符扩展为空格
set expandtab
set autoindent
" 语法高亮
syntax on
" 注释颜色
hi comment ctermfg=6
