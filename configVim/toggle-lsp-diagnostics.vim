lua <<EOF
require'toggle_lsp_diagnostics'.init()
EOF

let g:lineDiag = 0

function! LineDiagFunction()
    if g:lineDiag
        autocmd!
        lua for _, win in ipairs(vim.api.nvim_list_wins()) do local config = vim.api.nvim_win_get_config(win); if config.relative ~= "" then vim.api.nvim_win_close(win, false); print('Closing window', win) end end
        let g:lineDiag = 0
    else
        autocmd CursorMoved * lua vim.lsp.diagnostic.show_line_diagnostics()
        let g:lineDiag = 1
    endif
endfunction

" nmap <leader>tlu <Plug>(toggle-lsp-diag-underline)
" nmap <leader>tls <Plug>(toggle-lsp-diag-signs)
nmap <F9> :call LineDiagFunction() <CR> <Plug>(toggle-lsp-diag-vtext)
nnoremap <F8> :call LineDiagFunction() <CR>

" nmap <leader>tlp <Plug>(toggle-lsp-diag-update_in_insert)

" nmap <leader>tld  <Plug>(toggle-lsp-diag)
" nmap <leader>tldd <Plug>(toggle-lsp-diag-default)
" nmap <leader>tldo <Plug>(toggle-lsp-diag-off)
" nmap <leader>tldf <Plug>(toggle-lsp-diag-on)
