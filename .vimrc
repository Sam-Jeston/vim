execute pathogen#infect()

syntax enable " Turn on syntax highlighting
set hidden " Leave hidden buffers open
set history=100 "by default Vim saves your last 8 commands.  We can handle more
set number
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
let g:ctrlp_map = '<c-p>'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" This needs to be configured to only be called for js, ts or html files
" map <c-f> :call JsBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>

let g:config_Beautifier = {}
let g:config_Beautifier['js'] = {}
let g:config_Beautifier['js'].indent_size = '2'
let g:config_Beautifier['html'] = {}
let g:config_Beautifier['html'].indent_size = '2'

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

colorscheme monokai

map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']

" All Vim stuff. Needs RustFmt and Racer
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['rustc']
let g:rustfmt_command = "cargo fmt -- "
let g:rustfmt_fail_silently = 1 " else rustfmt will bring cursor to bottom of window on syntax failure"
set hidden
let g:racer_cmd = "/Users/samjeston/.cargo/bin/racer" " This is the mac location"
let g:racer_experimental_completer = 1 " An experimental option right now
