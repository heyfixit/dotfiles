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
      \'coc-git'
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
set notimeout
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
colorscheme gruvbox
syntax on
syntax enable

" Remove underline in folded lines {{{
hi! Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE
" Link highlight groups to improve buftabline colors {{{
hi! link BufTabLineCurrent Identifier
hi! link BufTabLineActive Comment
hi! link BufTabLineHidden Comment
hi! link BufTabLineFill Comment

"" Language Settings
let $LANG = 'en_US'
"""""""""""""""""""""
"  PLUGIN SETTINGS  "
"""""""""""""""""""""
"" FZF
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
let g:mapleader="\<space>"

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

"" Vim Default Overrides
" Easier window switching
nmap <silent> <C-w><C-w> :call utils#intelligentCycling()<CR>

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

" When jump to next match also center screen
" Note: Use :norm! to make it count as one command. (i.e. for i_CTRL-o)
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

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" More logical Y (default was alias for yy)
nnoremap Y y$

" Use CamelCaseMotion instead of default motions
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" Fix the cw at the end of line bug default vim has special treatment (:help cw)
nmap cw ce
nmap dw de

" Uppercase word in insert mode
" inoremap <C-u> <ESC>mzgUiw`za
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

"" Common Tasks
" Turn off Highlighting
nnoremap ,l :nohl<cr>

" Quick save and close buffer
nnoremap <silent> ,c :Sayonara!<CR>
nnoremap <silent> ,q :Sayonara<CR>

" Yank and paste from clipboard
nnoremap ,y "+y
vnoremap ,y "+y
nnoremap ,yy "+yy
nnoremap ,p "+p

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" CTags generation / navigation (:tselect to select from menu)
nnoremap ]t :tn<CR>
nnoremap [t :tp<CR>
nnoremap ,ts :ts<CR>
nnoremap ,tg :GTags<CR>

" QuickFix navigation
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>

" Location list navigation
nnoremap ]l :lnext<CR>
nnoremap [l :lprevious<CR>

" Error mnemonic (Neomake uses location list)
nnoremap ]e :lnext<CR>
nnoremap [e :lprevious<CR>

" Reselect last-pasted text
nnoremap gl `[v`]

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" [S]plit line (sister to [J]oin lines) S is covered by cc.
nnoremap S mzi<CR><ESC>`z

" Easier fold toggling
nnoremap ,z za

" Start substitute on current word under the cursor
nnoremap ,s :%s///gc<Left><Left><Left>

" Start search on current word under the cursor
nnoremap ,/ /<CR>

" Start reverse search on current word under the cursor
nnoremap ,? ?<CR>

" Faster sort
vnoremap ,s :!sort<CR>

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

"" Window/Buffer Management
" Intelligent windows resizing using ctrl + arrow keys
nnoremap <silent> <C-Right> :call utils#intelligentVerticalResize('right')<CR>
nnoremap <silent> <C-Left> :call utils#intelligentVerticalResize('left')<CR>
nnoremap <silent> <C-Up> :resize +1<CR>
nnoremap <silent> <C-Down> :resize -1<CR>

" Buffers navigation and management
nnoremap <silent> + :bn<CR>
nnoremap <silent> _ :bp<CR>

"" Add ; to end of line with <C-l> in insert mode
inoremap <silent><C-l> <Esc>v`^me<Esc>gi<C-o>:call Ender()<CR>

"""""""""""""""""""""
"  PLUGIN MAPPINGS  "
"""""""""""""""""""""
"" FZF
" " Search files recursively ([o]pen file)
" nnoremap <silent> <leader>o :Files<CR>
" " Search git status (edited) [f]iles
" nnoremap <silent> <leader>f :GFiles?<CR>
" " Search in local buffer [c]ommits
" nnoremap <silent> <leader>c :BCommits<CR>
" " Search in all the project [C]ommits
" nnoremap <silent> <leader>C :Commits<CR>
" " Search between open files - [b]uffers
" nnoremap <silent> <leader>b :Buffers<CR>
" " Search in [l]ines on current buffer
" nnoremap <silent> <leader>l :BLines<CR>
" " Search in all the opened buffers [L]ines
" nnoremap <silent> <leader>L :Lines<CR>
" " Search in ultisnips [s]nippets
" nnoremap <silent> <leader>s :Snippets<CR>
" " Search in [m]arks
" nnoremap <silent> <leader>m :Marks<CR>
" " Search in edited files [h]istory
" nnoremap <silent> <leader>h :History<CR>
" " Search in search [/] history
" nnoremap <silent> <leader>/ :History/<CR>
" " Search in ag search
" nnoremap <silent> <leader>a :Ag

" "" UltiSnips
" " Disable built-in cx-ck to be able to go backward
" inoremap <C-x><C-k> <NOP>
" let g:UltiSnipsExpandTrigger='<C-j>'
" let g:UltiSnipsListSnippets='<C-s>'
" let g:UltiSnipsJumpForwardTrigger='<C-j>'
" let g:UltiSnipsJumpBackwardTrigger='<C-k>'

"" Isolate
vnoremap ,i :Isolate<CR>
nnoremap ,u :UnIsolate<CR>

"" Expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"" Argumentative
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

"" CtrlSF / ctrlsf
nnoremap <leader>g :CtrlSF<Space>
nnoremap <leader>G :CtrlSFToggle<Space>
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
nnoremap <silent> ,g :call utils#searchCurrentWordWithAg()<CR>


"" BufOnly -> [C]lose all
nnoremap ,C :Bonly<CR>

"" Tabularize -> [a]lign
vnoremap ,a :Tabularize /

"" JsDoc / jsdoc -> [D]ocument Function
nnoremap ,d :JsDoc<CR>

"" Mundo [u]ndo
nnoremap <silent> <leader>u :MundoToggle<CR>

"" Denite
" Show MiniYank History
nnoremap <silent> \Y :<C-u>Denite miniyank<cr>
" Show extension list
nnoremap <silent> \e  :<C-u>Denite coc-extension<cr>
" Show symbols of current buffer
nnoremap <silent> \o  :<C-u>Denite coc-symbols<cr>
" Search symbols of current workspace
nnoremap <silent> \t  :<C-u>Denite coc-workspace<cr>
" Show diagnostics of current workspace
nnoremap <silent> \a  :<C-u>Denite coc-diagnostic<cr>
" Show available commands
nnoremap <silent> \c  :<C-u>Denite coc-command<cr>
" Show available services
nnoremap <silent> \s  :<C-u>Denite coc-service<cr>
" Show links of current buffer
nnoremap <silent> \l  :<C-u>Denite coc-link<cr>

"" Emmet
let g:user_emmet_leader_key='<M-y>'
let g:user_emmet_settings = {
      \ 'javascript.jsx' : {
      \ 'extends' : 'jsx',
      \ },
    \}

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
nmap <leader>ac  <Plug>(coc-codeaction)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" remap for format selected region
vmap <space>f <Plug>(coc-format-selected)
nmap <space>f <Plug>(coc-format-selected)

" Create mappings for function text object
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

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
nmap <f1> :CocCommand explorer<CR>
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
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

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

"" Capturing Output of vim commands
"Examples:
":Page version
":Page messages
":Page ls
"It also works with the :!cmd command and Ex special characters like % (cmdline-special)
":Page !wc %
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

"Put the output of acommand into a scratch buffer.
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
