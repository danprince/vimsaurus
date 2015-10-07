function! FindSynonym()
  let target = expand("<cword>")
  call NextSynonym(target)
endfunction

function! NextSynonym(target)
  let synonym = system("bashsaurus " . a:target)
  let cleaned = substitute(synonym, "\n", "", "")
  execute "normal ciw" . cleaned
endfunction

