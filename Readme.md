> vim-colors-solarized 配色

这个主题的更新时间赫然写着“7 years ago”，按照往常套路colorscheme solarized，打开vim简直是一坨shi，应该是新的终端颜色不适配了。

1. 打开终端判断

   ```
   echo $COLORTERM
   ```

   输出为 truecolor

2. .vimrc 修改

   ```
   syntax enable
   set background=dark
   " 颜色scheme
   if $COLORTERM == 'truecolor'
   		set termguicolors
   		colorscheme s
   else	
   		set term=xterm
   		set t_Co=256
   		colorscheme solarized
   endif
   ```

3. /bundle/vim-colors-solarized/colors

   复制一份solarized.vim 重命名为s.vim

4. 修改s.vim 支持termguicolors

   第243行修改

   ```
   if ((has("gui_running") && g:solarized_degrade ==0) || has('termguicolors'))
   ```

5. 没有termguicolors 安装itchyny/lightline.vim

   直接在.vimrc添加Plugin，然后:PluginInstall