function! neoformat#formatters#jsonc#enabled() abort
    return ['jsbeautify', 'prettydiff', 'prettier', 'jq', 'fixjson']
endfunction

function! neoformat#formatters#jsonc#jsbeautify() abort
    return neoformat#formatters#javascript#jsbeautify()
endfunction

function! neoformat#formatters#jsonc#prettydiff() abort
    return neoformat#formatters#javascript#prettydiff()
endfunction

function! neoformat#formatters#jsonc#jq() abort
    return {
            \ 'exe': 'jq',
            \ 'args': ['.'],
            \ }
endfunction

function! neoformat#formatters#jsonc#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath', '"%:p"', '--parser', 'json'],
        \ 'stdin': 1,
        \ }
endfunction

function! neoformat#formatters#jsonc#fixjson() abort
    let l:filename = fnamemodify(bufname('%'), ':t')
    return {
        \ 'exe': 'fixjson',
        \ 'args': ['--stdin-filename', l:filename],
        \ 'stdin': 1,
        \ }
endfunction
