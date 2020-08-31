""""""""""""""""""""""""""""
"  HEADER / LOAD VIM PLUG  "
""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""                    Author: github.com/heyfixit                      """""
"""""                    Use with Folds (zm, za, etc...)                  """""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load VimPlug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  augroup plug_install
    autocmd VimEnter * PlugInstall
  augroup END
endif
"""""""""""""
"  PLUGINS  "
"""""""""""""
call plug#begin('~/.config/nvim/plugged')
"" Language Agnostic Plugins
" abolish vim
Plug 'tpope/vim-abolish'
" Commenting with gcc
Plug 'tomtom/tcomment_vim'
" Easy Motion (painting waypoints on screen and jumping to them)
Plug 'easymotion/vim-easymotion'
" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
" Heuristically set indent settings
Plug 'tpope/vim-sleuth'
" miniyank, possible YankRing replacement
Plug 'bfredl/nvim-miniyank'
" Mundo for undotree
Plug 'simnalamburt/vim-mundo'
" Editor config
Plug 'editorconfig/editorconfig-vim'
" All In One Syntax Highlighter
Plug 'sheerun/vim-polyglot'
" CoC only works with Denite for nowrap
Plug 'Shougo/denite.nvim'
" Add Devicons to various plugins like nerdtree
Plug 'ryanoasis/vim-devicons'
" Diff selections with :Linediff
Plug 'AndrewRadev/linediff.vim'
" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'
" Window Swapper for swaping splits through <leader>ww
Plug 'wesQ3/vim-windowswap'
" CoC MAGIC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
" Vim Start Screen
Plug 'mhinz/vim-startify'
" Vim Which Key
Plug 'liuchengxu/vim-which-key'
" Project-wide find/replace wit Ag
Plug 'dyng/ctrlsf.vim'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"" Extra Text Objects
" Custom text objects creation (dependency for the latter)
Plug 'kana/vim-textobj-user'
" Argument text object (via, >a)
Plug 'PeterRincker/vim-argumentative'
" Indent text object (vii)
Plug 'kana/vim-textobj-indent'
" Line text object (vil)
Plug 'kana/vim-textobj-line'
" Entire buffer text object (vae)
Plug 'kana/vim-textobj-entire'
" Comment text object (vac)
Plug 'glts/vim-textobj-comment'
" XML attribute (vax, vix)
Plug 'whatyouhide/vim-textobj-xmlattr'
" Improved targets line cin) next parens
" ca, can,
" I, A leaves surrounding white space
" n for next pair, l for last
Plug 'wellle/targets.vim'
"" Text Insertion/manipulation
" Surround (cs"')
Plug 'tpope/vim-surround'
" Easy alignment
Plug 'godlygeek/tabular', { 'on':  'Tabularize' }
" Safely editing in isolation
Plug 'ferranpm/vim-isolate', { 'on':  ['Isolate', 'UnIsolate'] }
" Cycling related words via C-a C-x (i.e. true/false)
Plug 'zef/vim-cycle'
" Titlecase motion (gt) turns this into Turns This Into
Plug 'christoomey/vim-titlecase'
" Floating terminal windows
Plug 'voldikss/vim-floaterm'
"" Miscellaneous
" Easily expand selected region
Plug 'terryma/vim-expand-region'
" Search for highlighted word with *
Plug 'thinca/vim-visualstar'
" Improve star by not jumping immediately
Plug 'ironhouzi/vim-stim'
" Intelligent buffer closing
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
" Iabbrev auto-correction library
Plug 'chip/vim-fat-finger'
" Matchit enhances jump motions
Plug 'tmhedberg/matchit'
" More . repeat functionality
Plug 'tpope/vim-repeat'
" Delete all but current buffer
Plug 'vim-scripts/BufOnly.vim', { 'on': 'Bonly' }
call plug#end()
" ------------------------- End of Plugin Section ------------------------------
""""""""""""""""""""""
"  COC EXTENSIONS    "
""""""""""""""""""""""
let g:coc_global_extensions = [
      \'coc-spell-checker',
      \'coc-yaml',
      \'coc-yank',
      \'coc-snippets',
      \'coc-stylelintplus',
      \'coc-stylelint',
      \'coc-actions',
      \'coc-eslint',
      \'coc-fzf-preview',
      \'coc-tsserver',
      \'coc-metals',
      \'coc-sh',
      \'coc-lua',
      \'coc-markdownlint',
      \'coc-highlight',
      \'coc-python',
      \'coc-explorer',
      \'coc-json', 
      \'coc-git',
      \'coc-emmet',
      \]

""""""""""""""""""""""
"  GENERAL SETTINGS  "
""""""""""""""""""""""
"" Basic
set encoding=utf-8                          " The encoding displayed.
set fileencoding=utf-8                      " The encoding written to file.
scriptencoding utf-8                        " Set utf-8 as default script encoding
set shell=/bin/zsh                          " Setting shell to zsh
set relativenumber                          " Relative Line numbers on
set number                                  " Line numbers on
set nowrap                                  " Turn off wrapping
set showmode                                " Always show mode
set showcmd                                 " Show commands as you type them
set textwidth=120                           " Text width is 120 characters
set cmdheight=2                             " Command line height
set pumheight=10                            " Completion window max size
set noswapfile                              " New buffers will be loaded without creating a swapfile
set hidden                                  " Enables to switch between unsaved buffers and keep undo history
set clipboard+=unnamed                      " Allow to use system clipboard
set lazyredraw                              " Don't redraw while executing macros (better performance)
set showmatch                               " Show matching brackets when text indicator is over them
set matchtime=2                             " How many tenths of a second to blink when matching brackets
set nostartofline                           " Prevent cursor from moving to beginning of line when switching buffers
set virtualedit=block                       " To be able to select past EOL in visual block mode
set nojoinspaces                            " No extra space when joining a line which ends with . ? !
set scrolloff=5                             " Scroll when closing to top or bottom of the screen
set updatetime=300                          " Update time used to create swap file or other things
set suffixesadd+=.js,.rb                    " Add js and ruby files to suffixes
set synmaxcol=220                           " Don't try to syntax highlight minified files
set tabstop=2                               " Tab Stuff
set expandtab
set shiftwidth=2
set mouse=a
set shortmess+=c                             " don't give |ins-completion-menu| messages
set signcolumn=yes                           " always show signcolumn
set diffopt=vertical

"" Spell/Spelling Settings
set spellfile=~/.config/nvim/dictionary.utf-8.add
set spelllang=en_us                         " Set language to US English
set nospell                                 " Disable checking by default (use <F4> to toggle)

"" Search Settings
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set wrapscan                                " Search again from top when reached the bottom
set nohlsearch                              " Don't highlight after search

"" Split Settings
set splitbelow                              " Splitting a window will put the new window below the current
set splitright                              " Splitting a window will put the new window right of the current

"" TimeOut Settings
" Time out on key codes but not mappings. Basically this makes terminal Vim work sanely. (by Steve Losh)
" set notimeout
set ttimeout
set ttimeoutlen=10

"" Undo Settings
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/tmp/undo//
endif

"" White Chars
set list                                    " Show listchars by default
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:·
set showbreak=↪

"" FileType Settings
filetype plugin on
filetype indent on

"" Folding Settings
set foldmethod=marker                       " Markers are used to specify folds.
set foldlevel=2                             " Start folding automatically from level 2
set fillchars="fold: "                      " Characters to fill the statuslines and vertical separators

"" OmniCompletion Settings
set previewheight=10
set completeopt-=preview
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=tmp/**

"" Nvim Settings
if has('nvim')
  let g:loaded_python_provider=1                        " Disable python 2 interface
  let g:python_host_skip_check=1                        " Skip python 2 host check
  " let g:python3_host_prog='/usr/bin/python3'            " Set python 3 host program linux
  let g:python3_host_prog='/usr/bin/python3'            " Set python 3 host program mac
  set inccommand=nosplit                                " Live preview of substitutes and other similar commands
endif

"" True Color Settings
if has('termguicolors')
  set termguicolors " Turn on true colors support
endif

"" Colors
colorscheme onedark
syntax on
syntax enable

" Remove underline in folded lines {{{
hi! Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE
" Link highlight groups to improve buftabline colors {{{
hi! link BufTabLineCurrent Identifier
hi! link BufTabLineActive Comment
hi! link BufTabLineHidden Comment
hi! link BufTabLineFill Comment

" Coc-Git gutter colors
hi! DiffChange cterm=NONE  gui=NONE

"" Language Settings
let $LANG = 'en_US'
"""""""""""""""""""""
"  PLUGIN SETTINGS  "
"""""""""""""""""""""
"" WindowSwap
let g:windowswap_map_keys = 0 "prevent default bindings
"" WhichKey
" No Floating Windows
let g:which_key_use_floating_win = 0
set timeoutlen=500

"" FZF
set rtp+=/home/dude/.zplug/bin/fzf
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores --ignore node_modules -g ""'
let g:fzf_layout = { 'window': 'enew' }

"" LightLine
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'tab': {
      \   'active': [ 'filename' ],
      \   'inactive': [ 'filename' ]
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'cocstatus', 'filetype', 'fileencoding', 'fileformat' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"HELP":&readonly?"RO":""}'
      \ },
      \ 'component_function': {
      \   'mode': 'utils#lightLineMode',
      \   'filename': 'utils#lightLineFilename',
      \   'filetype': 'utils#lightLineFiletype',
      \   'fileformat': 'utils#lightLineFileformat',
      \   'fileencoding': 'utils#lightLineFileencoding',
      \   'cocstatus': 'StatusDiagnostic'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&readonly)'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"" Ctrl-SF / CtrlSF / ctrlsf
let g:ctrlsf_default_root='project'
let g:ctrlsf_populate_qflist=0
let g:ctrlsf_position='bottom'
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_auto_close=0
let g:ctrlsf_regex_pattern=0
let g:ctrlsf_mapping = {
      \ 'next'    : 'n',
      \ 'prev'    : 'N',
      \ 'quit'    : 'q',
      \ 'openb'   : '',
      \ 'split'   : 's',
      \ 'tab'     : '',
      \ 'tabb'    : '',
      \ 'popen'   : '',
      \ 'pquit'   : '',
      \ 'loclist' : '',
      \ }

"" VimPlug
let g:plug_timeout=20

"" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Case insensitive unless you use capitals

"" CoC
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

""""""""""""""
"  MAPPINGS  "
""""""""""""""
"" Setting Leader/mapleader
let g:mapleader="\<Space>"

"" Disable Some Default Mappings
nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <left> <NOP>
nnoremap <right> <NOP>
nnoremap <bs> <NOP>
nnoremap <delete> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
nnoremap <Space> <NOP>
inoremap <F1> <NOP>
nnoremap <F1> <NOP>
nnoremap Q <NOP>

"" F-Keys
" F2 to turn off relativenum and allow highlighting
nnoremap <silent> <F2> :call ToggleHighlight()<CR>
" F3 to edit vim config
nnoremap <silent> <F3> :e $MYNVIMRC<CR>
" Toggle spelling
nnoremap <silent> <F4> :set spell!<CR> :set spell?<CR>
" Source (reload configuration)
nnoremap <silent> <F5> :source $MYNVIMRC<CR>
" Toggle search highlight
nnoremap <silent> <F6> :set nohlsearch!<CR> :set nohlsearch?<CR>
" Toggle white characters visibility
nnoremap <silent> <F7> :set list!<CR> :set list?<CR>
" New term buffer
nnoremap <silent> <F8> :terminal<CR>
" Fire REST Request
nnoremap <silent> <F9> :call VrcQuery()<CR>
" Free
" nnoremap <silent> <F10>
" Free
" nnoremap <silent> <F11>
" Informative echo
nnoremap <F12> :call utils#showToggles()<CR>

"" Mappings WhichKey Can't Handle
" For cases like a mapping that's different in visual mode
" Or insert mode mappings
" Or single-key mappings

" Quick jump to other splits via Control-h,j,k,l
nnoremap <silent> <C-h> :call WinMove('h')<cr>
nnoremap <silent> <C-j> :call WinMove('j')<cr>
nnoremap <silent> <C-k> :call WinMove('k')<cr>
nnoremap <silent> <C-l> :call WinMove('l')<cr>

" Visual linewise up and down by default (and use gj gk to go quicker)
nnoremap j gj
nnoremap k gk
nnoremap gj 5j
nnoremap gk 5k
vnoremap j gj
vnoremap k gk
vnoremap gj 5j
vnoremap gk 5k

" Uppercase word in insert mode in a way that doesn't break snippet tabstops
inoremap <C-u> <Esc>gUawea

" Matching brackets with TAB (using matchit) (Breaks the <C-i> jump)
map <TAB> %
silent! unmap [%
silent! unmap ]%

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" Stay down after creating fold
vnoremap zf mzzf`zzz

" Make . work with visually selected lines
xnoremap . :norm.<CR>

" Fix the cw at the end of line bug default vim has special treatment (:help cw)
nmap cw ce
nmap dw de

" Use CamelCaseMotion instead of default motions
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" More logical Y (default was alias for yy)
nnoremap Y y$

" When jump to next match also center screen
" Note: Use :norm! to make it count as one command. (i.e. for i_CTRL-o)
" zz centers cursor
nnoremap <silent> n :norm! nzz<CR>
nnoremap <silent> N :norm! Nzz<CR>
vnoremap <silent> n :norm! nzz<CR>
vnoremap <silent> N :norm! Nzz<CR>

" Same when moving up and down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-u> <C-u>zz
vnoremap <C-d> <C-d>zz
vnoremap <C-f> <C-f>zz
vnoremap <C-b> <C-b>zz

"" WhichKey Mappings and Dictionaries
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u> WhichKeyVisual '<Space>'<CR>
nnoremap <silent> , :WhichKey ','<CR>
vnoremap <silent> , :<c-u> WhichKeyVisual ','<CR>
nnoremap <silent> [ :WhichKey '['<CR>
vnoremap <silent> [ :<c-u> WhichKeyVisual '['<CR>
nnoremap <silent> ] :WhichKey ']'<CR>
vnoremap <silent> ] :<c-u> WhichKeyVisual ']'<CR>
nnoremap <silent> g :WhichKey 'g'<CR>
vnoremap <silent> g :<c-u> WhichKeyVisual 'g'<CR>

" Yank and paste from clipboard
nnoremap ,y "+y
vnoremap ,y "+y
nnoremap ,yy "+yy
nnoremap ,p "+p

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Reselect last-pasted text
nnoremap gl `[v`]

"" Expand region intelligently via spamming v
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"" Argumentative select and shuffle argument lists
xmap ia <Plug>Argumentative_InnerTextObject
xmap aa <Plug>Argumentative_OuterTextObject
omap ia <Plug>Argumentative_OpPendingInnerTextObject
omap aa <Plug>Argumentative_OpPendingOuterTextObject
nmap [a <Plug>Argumentative_Prev
nmap ]a <Plug>Argumentative_Next
xmap [a <Plug>Argumentative_XPrev
xmap ]a <Plug>Argumentative_XNext
nmap <a <Plug>Argumentative_MoveLeft
nmap >a <Plug>Argumentative_MoveRight

"" [t]abularize
vnoremap ,t :Tabularize /

"" CtrlSF
nnoremap <leader>G :CtrlSF<Space>

"" EasyMotion
" Jump to anywhere on screen with ,e{char}{label}
map ,e <Plug>(easymotion-f2)
nmap ,e <Plug>(easymotion-overwin-f2)
map ,j <Plug>(easymotion-j)
nmap ,j <Plug>(easymotion-j)
map ,k <Plug>(easymotion-k)
nmap ,k <Plug>(easymotion-k)
map ,w <Plug>(easymotion-w)
nmap ,w <Plug>(easymotion-overwin-w)

"" Conquer of Code / CoC.nvim
" Remap for do codeAction of current line
nmap <silent> <leader>ca :CocAction<CR>

" Fix autofix problem of current line
nmap <leader>cq  <Plug>(coc-fix-current)

" Remap for do codeAction of selected region
xmap <silent> <leader>cs :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>cs :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Remap for rename current word
nmap <leader>cr <Plug>(coc-rename)

" remap for format selected region
vmap <space>cf <Plug>(coc-format-selected)
nmap <space>cf <Plug>(coc-format-selected)

" format buffer
nmap <space>cF :Format<CR>

" organize imports
nmap <space>cO :OR<CR>

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>La  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>Le  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>Lc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>Lo  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>Ls  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>Lj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>Lk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>Lp  :<C-u>CocListResume<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

"F1 for coc-explorer
nmap <f1> :CocCommand explorer<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>cK :call <SID>show_documentation()<CR>

"" Defining a bunch of WhichKey dictionaries
let g:which_key_leader_map = {
      \ 'u' : [':MundoToggle', 'toggle mundo'],
      \ }

let g:which_key_leader_map.L = {
      \ 'name' : '+list',
      \ 'a' : 'diagnostics',
      \ 'e' : 'extensions',
      \ 'c' : 'commands',
      \ 'o' : 'outline',
      \ 's' : 'symbols',
      \ 'j' : 'default action next item',
      \ 'k' : 'default action prev item',
      \ 'p' : 'resume latest coc list',
      \ }

let g:which_key_leader_map.c = {
      \ 'name': '+CoC',
      \ 'a' : 'code action line',
      \ 'c' : [':CocCommand', 'command menu'],
      \ 's' : 'code action selection',
      \ 'q' : 'quickfix line',
      \ 'r' : 'rename symbol',
      \ 'f' : 'format selected',
      \ 'F' : 'format buffer',
      \ 'O' : 'organize imports',
      \ 'K' : 'show documentation(K)',
      \ }

" Start defining dictionaries based on trigger key
" <leader>w to trigger split actions
let g:which_key_leader_map.w = {
      \ 'name' : '+windows/splits' ,
      \ 'c' : [':call utils#intelligentCycling()' , 'cycle windows' ],
      \ 'y' : [':call WindowSwap#MarkWindowSwap()', 'mark swap' ],
      \ 'p' : [':call WindowSwap#DoWindowSwap()', 'swap w/marked' ],
      \ }
" <leader>f to trigger fold actions
let g:which_key_leader_map.f = {
      \ 'name' : '+folds' ,
      \ 'C' : ['zM', 'close all folds(zM)'],
      \ 't' : ['za', 'toggle fold(za)'],
      \ 'c' : ['zc', 'close fold(zc)'],
      \ 'o' : ['zo', 'open fold(zo)'],
      \ 'O' : ['zR', 'open all folds(zR)'],
      \ 'f' : ['mzzf`zzz', 'create fold(zf)'],
      \ }

" <leader>l to trigger line actions
let g:which_key_leader_map.l = {
      \ 'name' : '+line',
      \ 'S' : ['mzi<CR><ESC>`z', 'Split line(S)'],
      \ 'J' : ['mzJ`z', 'Join line(J)'],
      \ }

" <leader>m to trigger misc actions
let g:which_key_leader_map.m = {
      \ 'name' : '+misc',
      \ 'h' : [':call ToggleHighlight()', 'toggle visible highlight(F2)'],
      \ 's' : [':CocCommand cSpell.toggleEnableSpellChecker', 'toggle spellchecker(F4)'],
      \ 'e' : ['e $MYNVIMRC', 'edit config(F5)'],
      \ 'y' : [':<C-u>Denite miniyank', 'miniyank'],
      \ }

let g:which_key_leader_map.s = {
      \ 'name' : '+search',
      \ 'f' : [':Files', 'files'],
      \ 'g' : [':GFiles?', 'git files'],
      \ 'G' : 'CtrlSF',
      \ 'c' : [':BCommits', 'buffer commits'],
      \ 'C' : [':Commits', 'all commits'],
      \ 'b' : [':Buffers', 'buffers'],
      \ 'l' : [':BLines', 'current buffer lines'],
      \ 'L' : [':Lines', 'all buffer lines'],
      \ 's' : [':Snippets', 'snippets'],
      \ 'm' : [':Marks', 'marks'],
      \ 'h' : [':History', 'edited file hist'],
      \ '/' : [':History/', '/ history'],
      \ 'a' : [':Ag', 'Ag Search'],
      \ }

" comma actions
let g:which_key_comma_map = {
      \ 's' : 'substitute current word / sort selection',
      \ '/' : ['/', 'search current word'],
      \ '?' : ['?', 'reverse-search current word'],
      \ 'y' : 'yank to clipboard',
      \ 'yy' : 'yank  line to clipboard',
      \ 'p' : 'paste from clipboard',
      \ 'l' : [':nohl', 'turn off highlighting'],
      \ 'c' : [':Sayonara!', 'delete buffer, close window'],
      \ 'q' : [':Sayonara', 'delete buffer, preserve window'],
      \ 'i' : [':Isolate', 'isolate selection'],
      \ 'u' : [':UnIsolate', 'unisolate'],
      \ 'g' : [':call utils#searchCurrentWordWithAg()', 'Ag search word'],
      \ 'C' : [':Bonly', 'BuffOnly'],
      \ 't' : 'Tabularize',
      \ 'd' : [':JsDoc', 'JsDoc'],
      \ 'e' : 'easymotion overwin2',
      \ 'j' : 'easymotion down',
      \ 'k' : 'easymotion up',
      \ 'w' : 'easymotion within line',
      \ }

" brackets
let g:which_key_lbracket_map = {
      \ 'q' : [':cprevious', 'prev quickfix'],
      \ 'l' : [':lprevious', 'prev locationlist'],
      \ 'd' : 'prev diagnostic',
      \ 'a' : 'move arg left',
      \ }

let g:which_key_rbracket_map = {
      \ 'q' : [':cnext', 'next quickfix'],
      \ 'l' : [':lnext', 'next locationlist'],
      \ 'd' : 'next diagnostic',
      \ 'a' : 'move arg right',
      \ }

let g:which_key_g_map = {
      \ 'l' : 'reselect last-pasted',
      \ 'g' : [':0', 'goto line 1'],
      \ }

" Register WhichKey
call which_key#register(' ', "g:which_key_leader_map")
call which_key#register(',', "g:which_key_comma_map")
call which_key#register('[', "g:which_key_lbracket_map")
call which_key#register(']', "g:which_key_rbracket_map")
call which_key#register('g', "g:which_key_g_map")
"""""""""""""""
"  FUNCTIONS  "
"""""""""""""""
"" CoC Functions
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
"" Move or Split
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

""""""""""""""
"  COMMANDS  "
""""""""""""""
"" Hide WhichKey Statusline
autocmd! FileType which_key
autocmd FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
"" CoC Commands
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

command! -nargs=0 NextDiagnostic :call CocAction('diagnosticNext')<CR>
command! -nargs=0 PrevDiagnostic :call CocAction('diagnosticPrevious')<CR>

"" Capturing Output of vim commands
"Examples:
" :Page version
" :Page messages
" :Page ls
" It also works with the :!cmd command and Ex special characters like % (cmdline-special)
" :Page !wc %
"Capture and return the long output of a verbose command.
function! s:Redir(cmd)
   let output = ""
   redir =>> output
   silent exe a:cmd
   redir END
   return output
endfunction

"A command to open a scratch buffer.
function! s:Scratch()
   split Scratch
   setlocal buftype=nofile
   setlocal bufhidden=wipe
   setlocal noswapfile
   setlocal nobuflisted
   return bufnr("%")
endfunction

"Put the output of a command into a scratch buffer.
function! s:Page(command)
   let output = s:Redir(a:command)
   call s:Scratch()
   normal gg
   call append(1, split(output, "\n"))
endfunction

command! -nargs=+ -complete=command Page :call <SID>Page(<q-args>)

""""""""""""""""""""""""
"  FOLDING METHOD  "
""""""""""""""""""""""""
"" Autofolding .vimrc
" see http://vimcasts.org/episodes/writing-a-custom-fold-expression/
""" defines a foldlevel for each line of code
function! VimFolds(lnum)
  let s:thisline = getline(a:lnum)
  if match(s:thisline, '^"" ') >= 0
    return '>2'
  endif
  if match(s:thisline, '^""" ') >= 0
    return '>3'
  endif
  let s:two_following_lines = 0
  if line(a:lnum) + 2 <= line('$')
    let s:line_1_after = getline(a:lnum+1)
    let s:line_2_after = getline(a:lnum+2)
    let s:two_following_lines = 1
  endif
  if !s:two_following_lines
      return '='
    endif
  else
    if (match(s:thisline, '^"""""') >= 0) &&
       \ (match(s:line_1_after, '^"  ') >= 0) &&
       \ (match(s:line_2_after, '^""""') >= 0)
      return '>1'
    else
      return '='
    endif
  endif
endfunction
""" defines a foldtext
function! VimFoldText()
  " handle special case of normal comment first
  let s:info = '('.string(v:foldend-v:foldstart).' l)'
  if v:foldlevel == 1
    let s:line = ' ◇ '.getline(v:foldstart+1)[3:-2]
  elseif v:foldlevel == 2
    let s:line = '   ●  '.getline(v:foldstart)[3:]
  elseif v:foldlevel == 3
    let s:line = '     ▪ '.getline(v:foldstart)[4:]
  endif
  if strwidth(s:line) > 80 - len(s:info) - 3
    return s:line[:79-len(s:info)-3+len(s:line)-strwidth(s:line)].'...'.s:info
  else
    return s:line.repeat(' ', 80 - strwidth(s:line) - len(s:info)).s:info
  endif
endfunction

""" set foldsettings automatically for vim files
augroup fold_vimrc
  autocmd!
  autocmd FileType vim
                   \ setlocal foldmethod=expr |
                   \ setlocal foldexpr=VimFolds(v:lnum) |
                   \ setlocal foldtext=VimFoldText() |
     "              \ set foldcolumn=2 foldminlines=2
augroup END



" Fix for KiTTY background color erase
let &t_ut=''
