function! vimsaurus#Find()
  let target = expand("<cword>")
  call vimsaurus#Next(target)
endfunction

function! vimsaurus#Next(target)
  let synonym = system("bashsaurus " . a:target)
  let cleaned = substitute(synonym, "\n", "", "")
  execute "normal! ciw" . cleaned
endfunction

