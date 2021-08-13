" ------------------------------------------------------------------------
"
"    ____    _    _____  __    _    ____  ____  _____ _____  _
"   / ___|  / \  |_ _\ \/ /   / \  |  _ \|  _ \| ____|_   _|/ \
"  | |     / _ \  | | \  /   / _ \ | |_) | |_) |  _|   | | / _ \
"  | |___ / ___ \ | | /  \  / ___ \|  __/|  _ <| |___  | |/ ___ \
"   \____/_/   \_\___/_/\_\/_/   \_\_|   |_| \_\_____| |_/_/   \_\
"
"
" ------------------------------------------------------------------------

" Config Iniciais basicas
"
set showcmd                                        "Mostra interacao dos comandos aplicados lado direito inferior
set relativenumber                                 "Destaca numero da linha  
set number                                         "Habilita numeração"
set hidden                                         "habilta buffer 
set mouse=a
set inccommand=split                               "Habilta Substituiçao de texto em tempo real
set cursorline                                     "Habilta um 'marcador' na linha"

"set hls
"set cul

set spell spelllang=pt,en
highlight clear SpellBad
highlight SpellBad term=reverse cterm=underline


let mapleader="\<space>"                          "Mapeia para tecla espaço, a tecla leader que por padrão é a tecla \

" -------------------------->
"  Atalhos e mapeamentos de teclas
" -------------------------->

"Atalhos salvar, sair
nnoremap <C-s> :w!<CR>
nnoremap <C-q> :qa<CR>

"Altenar entre abas
nnoremap <F1> :bprevious<CR>
nnoremap <F2> :bnext<CR>

"Altera posiçoes da linha tecla Shift+ cima ou baixo (setas)
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>

"Copiar texto e enviar para a area de transferencia
vnoremap <C-c> "+y<CR>

" Faz Uso do Plugin fzf e o silversearch-ag para fazer pesquisa de docs -
" Instalação via apt
nnoremap <c-p> :Files<cr>                             
nnoremap <c-a> :Ag<space>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>er :vspit ~/.config/ranger/rc.conf<cr>
nnoremap <leader>ez :vsplit ~/.zshrc<cr>
nnoremap <leader>sz :source ~/.zshrc<cr>
nnoremap <leader>sb :source ~/.bashrc<cr>

set background=dark
set t_Co=256
syntax on


" ------------------------>
" Configurações Plugins
" ------------------------>

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'terroo/vim-auto-markdown'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'airblade/vim-gitgutter'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'roxma/nvim-completion-manager'
Plug 'severin-lemaignan/vim-minimap'
Plug 'jiangmiao/auto-pairs'
Plug 'TaDaa/vimade'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
"Cria barras o rodape do vim, ajuda com estetica"
Plug 'vim-airline/vim-airline'                 
"autocomplete para diversas linguagens
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Analisador de codigo assincrono"
Plug 'dense-analysis/ale'
"adiciona cores hexadecimais, rgb e etc
Plug 'gko/vim-coloresque'
"Adiciona Icones
Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'thaerkh/vim-indentguides'



" ------------------------>
"  Temas
" ------------------------>
Plug 'edersonferreira/dalton-vim'
Plug 'morhetz/gruvbox'


call plug#end()

" ------------------------>


"Tema escolhido
"------------------------->

colorscheme gruvbox
"color dalton


"------------------------->


" ------------------------>
"  Configurações especificas de plugins
" ------------------------>


" ------------------------> 
" Configurações do CoC.nvim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"Fim das configurações do CoC.nvim
" ------------------------------>


"NerdTree
" ------------------------------>
nnoremap <leader>n :NERDTreeToggle<CR>
" ------------------------------>

"Vim Airline
"------------------------------->
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
"Vim Airline Tema Dalton
let g:airline_theme='dalton'
"------------------------------->


" Ranger
" ------------------------------>
let g:ranger_map_keys = 0
map <leader>f :Ranger<CR>
"------------------------------->


" Vim-gitgutter
" ------------------------------>
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk
set updatetime=100
"------------------------------->

" Configurações do Vim IndentGuides
" ------------------------------>

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do Vim IndentGuides
" ------------------------------>


" Vim Instant Markdown
" ------------------------------>

filetype plugin on
"Uncomment to override defaults:
"et g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
