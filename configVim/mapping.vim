"......TEMP
nnoremap <Space>e :NvimTreeToggle<CR> :set rnu<CR>
nnoremap <Space>f :NvimTreeFindFileToggle<CR> :set rnu<CR>
"......

nnoremap <leader>cl :vimgrep /console\.log/g **/*.tsx **/*.jsx **/*.js **/*.ts <CR>
nnoremap <leader>aa ggVG
nnoremap n nzzzv
nnoremap N Nzzzv
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
vnoremap <A-8> :m '>+1<CR>gv=gv
vnoremap <A-7> :m '<-2<CR>gv=gv
nnoremap <A-8> :m .+1<CR>==
nnoremap <A-7> :m .-2<CR>==
vnoremap <leader>sv y :%s/<C-r>0//gc<left><left><left>
nnoremap <leader>ss :%s///gc<left><left><left><left>
nnoremap <leader>sw yiw :%s/<C-r>0//gc<left><left><left>
nnoremap <silent> <C-s> z= 1 <CR><CR>
inoremap <silent> <C-s> <ESC> z= 1 <CR><CR>
nnoremap <A-c> :cclose <CR>
nnoremap <A-o> :copen <CR> <C-w>J
nnoremap <A-i> :cnext <CR>
nnoremap <A-u> :cprev <CR>
vnoremap # y?<C-r>0<CR> nzzzv
vnoremap * y/<C-r>0<CR> nzzzv
nnoremap # #Nzzzv
nnoremap * *Nzzzv
nnoremap <A-4> 20zh
nnoremap <A-5> 20zl
nnoremap <leader><TAB> :b zsh<TAB> <CR>
" nnoremap <A-f> :CocCommand prettier.formatFile <CR>
nnoremap <leader><TAB> :sp <CR> <C-W>J <C-W>10- :b zsh<TAB><CR>
" nnoremap <leader>sB :sp <CR> <C-W>J <C-W>10- :b zsh
nnoremap <F12> :IndentGuidesToggle <CR>
nnoremap <TAB> gt
nnoremap <S-TAB> gT
nnoremap <F5> :so ~/.config/nvim/init.vim <CR>
nnoremap <A-l> <C-W>l
nnoremap <A-k> <C-W>k
nnoremap <A-j> <C-W>j
nnoremap <A-h> <C-W>h
nnoremap <A-b> :b 
nnoremap <leader>vb :vs\|b 
nnoremap <leader>tb :tabnew\|b 
nnoremap <leader>sb :sp\|b 
nnoremap <leader>stb :sp\|te<CR> <C-W>J <C-W>10-
nnoremap <leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <leader>ve :vsplit <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <leader>se :split <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <A-e> :e <C-R>=expand("%:p:h") . "/" <CR>
tmap <ESC> <C-\><C-n>
" nnoremap <leader>btl :tabnew <CR> <C-^>
" nnoremap <leader>bvl :vs <CR> <C-^>
" nnoremap <leader>bsl :sp <CR> <C-^>
nnoremap <leader>btp :tabnew\|bprev <CR>
nnoremap <leader>btn :tabnew\|bnext <CR>
nnoremap <leader>bvp :vs\|bprev <CR>
nnoremap <leader>bvn :vs\|bnext <CR>
nnoremap <leader>bsp :sp\|bprev <CR>
nnoremap <leader>bsn :sp\|bnext <CR>
nnoremap <A-2> :bprev <CR>
nnoremap <A-3> :bnext <CR>
nnoremap <leader>bd :bd <CR>
nnoremap <leader>tc :tabclose <CR>
nnoremap <leader>to :tabnew <CR>
nnoremap <A-w> :w <CR>
nnoremap <A-q> :q <CR>
nnoremap <leader>A :wqa <CR>
nnoremap <leader>qa :qa <CR>
nnoremap <leader>wa :wa <CR> 
nnoremap <leader>wq :wq <CR>
nnoremap <A-s> :sp <CR> 
nnoremap <A-v> :vs <CR> 
nnoremap <leader>st :sp\|te <CR>
nnoremap <leader>vt :vs\|te <CR>
nnoremap <leader>tt :tabnew\|te <CR>
nnoremap <leader>it :te <CR>
nmap <C-n> :noh <CR>
if bufwinnr(1)
  nmap = <C-W>+
  nmap - <C-W>-
  nmap _ <C-W><
  nmap + <C-W>>
endif
function TabLeft()
   if tabpagenr() == 1
      execute "tabm"
   else
      execute "tabm -1"
   endif
endfunction

function TabRight()
   if tabpagenr() == tabpagenr('$')
      execute "tabm" 0
   else
      execute "tabm +1"
   endif
endfunction

nmap <C-l> :execute TabRight() <CR>
nmap <C-h> :execute TabLeft() <CR>

"......TEMP
nnoremap <F10> :RainbowLevelsToggle <CR>
"......

"......TEMP
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
"......
