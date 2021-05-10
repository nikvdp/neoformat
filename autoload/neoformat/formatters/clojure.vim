function! neoformat#formatters#clojure#enabled() abort
    return ['cljfmt']
endfunction

function! neoformat#formatters#clojure#cljfmt() abort
    return {
        \ 'exe': 'cljfmt',
        \ 'args': [],
        \ 'stdin': 1
        \ }
endfunction

