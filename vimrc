set encoding=utf8       " set standard file encodeing
set nomodeline          " no special per file vim override configs
set nowrap              " stop word wrapping
autocmd FileType markdown setlocal wrap " except for markdown
set undolevels=100      " adjust system undow levels
syntax on               " enable syntax highlighting
set cursorline          " highlight the current line
" set background=dark   " darker color scheme
" set ruler             " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set number              " show line numbers
set showcmd             " show selection metadata
set showmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set autoindent smartindent  " auto/smart indent
set smarttab            " better backspace and tab functionality
set scrolloff=1         " show at least 5 lines above/below
set sidescrolloff=5
set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins

set inccommand=split    " show effects of command incrementally

" column-width visual indication
" let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=235 guibg=#001D2F

" tabs and indenting
set autoindent          " auto indenting
set smartindent         " smart indenting
set tabstop=2           " 2 spaces for tabs
set softtabstop=2       " convert tabs to space
set shiftwidth=2        " 2 spaces for indentation
set expandtab           " spaces instead of tabs
highlight SpecialKey ctermfg=1
set list
set listchars=tab:T>

" bells
set noerrorbells        " turn off audio bell
set visualbell          " but leave on a visual bell

set conceallevel=1

" search
set hlsearch            " highlighted search results
set showmatch           " show matching bracket

" other
set guioptions=aAace    " don't show scrollbar in MacVim

" clipboard
set clipboard=unnamed   " allow yy, etc. to interact with OS X clipboard

" shortcuts
map <F2> :NERDTreeToggle<CR>

let mapleader="\<SPACE>"

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type':'opt'})

if has('nvim')
  call minpac#add('Shougo/deoplete.nvim')
  call minpac#add('Shougo/neco-vim')
  call minpac#add('fishbullet/deoplete-ruby')
end

" Theme
call minpac#add('mhartington/oceanic-next')
" Linting
call minpac#add('sheerun/vim-polyglot')
call minpac#add('w0rp/ale')
" Surrounding
call minpac#add('tpope/vim-surround')
" File tree
call minpac#add('scrooloose/nerdtree')
" Git
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-git')
call minpac#add('tpope/vim-fugitive')
" Snippets
call minpac#add('sirver/ultisnips')
" Ruby / Rails
call minpac#add('tpope/vim-rails')
call minpac#add('thoughtbot/vim-rspec')
call minpac#add('henrik/vim-ruby-runner')
" Elm
call minpac#add('elmcast/elm-vim')
" Phoenix
call minpac#add('c-brenn/phoenix.vim')
call minpac#add('tpope/projectionist')
" Elixir
call minpac#add('slashmili/alchemist.vim')
" Other
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('vim-airline/vim-airline')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('mattn/emmet-vim')
call minpac#add('godlygeek/tabular')
call minpac#add('mhinz/vim-grepper')
call minpac#add('tpope/vim-commentary')
call minpac#add('avakhov/vim-yaml')

" minpac commands:
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

let g:rspec_command = "!bundle exec rspec {spec}"
" remapped keys
" inoremap {      {}<Left>
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
" inoremap {}     {}

nnoremap <Leader>p :CtrlP<CR>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let g:mustache_abbreviations = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:ctrlp_map = '<c-p>'

" Elm mappings
let g:elm_jump_to_error    = 0
let g:elm_make_output_file = "elm.js"
let g:elm_format_autosave  = 1

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2

nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

let g:deoplete#enable_at_startup=1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

syntax enable
colorscheme OceanicNext

let g:airline_theme='oceanicnext'

let g:ale_sign_column_always = 1
if (has("termguicolors"))
  set termguicolors
end

let g:alchemist_tag_disable = 1
