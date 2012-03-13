" OmniCppComplete initialization
call omni#cpp#complete#Init()

""" abbreviation
" include
iabbr <silent> #i #include
iabbr <silent> #d #define
" #ifn is an invalid abbreviation sequence, so use imap
imap <silent> #ifn #ifndef <CR>#endif<Up><C-o>:norm $<CR>
imap <silent> #ifd #ifdef <CR>#endif<Up><C-o>:norm $<CR>
iabbr <silent> #e #else

" control statement
iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>
iabbr <silent> while while ()<Left><C-R>=Eatchar('\s')<CR>
iabbr <silent> for for (;;)<Left><Left><Left><C-R>=Eatchar('\s')<CR>
iabbr <silent> switch switch ()<Left><C-R>=Eatchar('\s')<CR>

""" key mappings
imap // <C-o>:s/^.*$/\/\* & *\/<CR><C-o>:noh<CR>

" pyclewn mappings
map <F5> :Pyclewn<CR>:Cfile <C-R>=expand("%:p:h") . "/" <CR>
