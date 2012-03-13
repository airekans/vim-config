" OmniCppComplete initialization
call omni#cpp#complete#Init()

""" key mappings
imap // <C-o>:s/^./\/\/ &<CR>
vmap <silent> \\/ :s/^./\/\/ &<CR>:noh<CR>
