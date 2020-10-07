" auto-install vim-plug
if empty(glob('C:/Users/Leonardo/AppData/Local/nvim/autoload/plug.vim'))
  silent !curl -fLo 'C:/Users/AppData/Local/nvim/autoload/plug.vim' --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('C:/Users/Leonardo/AppData/Local/nvim/autoload/plugged')

    " Text Navigation
    Plug 'unblevable/quick-scope'
 
    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
        " Highlighted yank for VSCode
        Plug 'machakann/vim-highlightedyank'
    else
        " Sneak
        Plug 'justinmk/vim-sneak'
        " Surround
        Plug 'tpope/vim-surround'
    endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
