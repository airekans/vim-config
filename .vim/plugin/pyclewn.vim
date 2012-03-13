" pyclewn run time file
" Maintainer:   <xdegaye at users dot sourceforge dot net>
"
" Configure VIM to be used with pyclewn and netbeans
"

" pyclewn version
let g:pyclewn_version = "pyclewn-1.7.py2"

" enable balloon_eval
if has("balloon_eval")
    set ballooneval
    set balloondelay=100
endif

" The 'Pyclewn' command starts pyclewn and vim netbeans interface.
command -nargs=* -complete=file Pyclewn call pyclewn#StartClewn(<f-args>)

" key mappings
map <F5> :Pyclewn<CR>:Cfile <C-R>=expand("%:p:h") . "/" <CR>
map <F10> :Cnext<CR>
map <F11> :Cstep<CR>
