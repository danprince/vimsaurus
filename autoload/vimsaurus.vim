let g:target = ""

function! vimsaurus#Find()
  let g:target = expand("<cword>")
  call vimsaurus#Next()
endfunction

function! vimsaurus#Next()
  let synonym = system("bashsaurus " . g:target)
  let cleaned = substitute(synonym, "\n", "", "")

  if empty(cleaned)
    echo "Found no synonyms for " . g:target . "!"
    return
  endif

  " insert text into buffer
  execute "normal! ciw" . cleaned

  if g:target =~ "^[A-Z]*$"
  " if all characters are uppercase
    echom "Word is capitalized"
    normal! viwU

  elseif g:target =~ "^[A-Z]"
  " if first letter is uppercase
    echom "First letter capital"
    normal! viwbU
  endif

endfunction

