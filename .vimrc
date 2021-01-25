" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Change cursor between different modes
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" Disable the default Vim startup message.
set shortmess+=I

" **** EDITING BEHAVIOUR ****
set number " Show line numbers.
set relativenumber " Use relative numbers
set backspace=indent,eol,start " Backspace over everything
set ignorecase " Ignore case when searching
set smartcase " Ignore case if search pattern is all lower case, case sensitive otherwise
set incsearch " Show search matches while typing
set mouse+=a " Enable mouse usage
set tabstop=4 " Tab = 4 spaces
set softtabstop=4 " When hitting <BS> pretend like a tab is removed, even if spaces
set expandtab " Expand tabs by default
set smarttab " Insert tabs on the start of the line according to shiftwidth
set shiftwidth=4 " Numbero of spaces for autoindenting
set shiftround " Use multiple of shiftwidth when indenting with '<' or '>'
set autoindent " Autoindenting on
set copyindent " Copy the previous indentation on autoindenting
set showmatch " Show matching parenthesis

" **** EDITOR LAYOUT ****
set laststatus=2 " Always show the status line at the bottom, even if you only have one window open.

" **** VIM BEHAVIOUR ****
set hidden " Hide buffers instead of closing them
set noerrorbells visualbell t_vb= " Disable error bells
set noswapfile " Don't create swap files
set title " Change the terminal title

" **** CUSTOM BINDINGS
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
