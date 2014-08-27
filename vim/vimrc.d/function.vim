function! ToggleDiff()
    if &diff
        diffoff
        setlocal syntax=on
    else
        diffthis
        setlocal syntax=off
        setlocal wrap
    endif
endfunction

function! DjangoTemplateSpaces()
    function! SubLeft(line)
        return substitute(a:line, '{{\([^ ]\)', '{{ \1', "g")
    endfunction

    function! SubRight(line)
        return substitute(a:line, '\([^ ]\)}}', '\1 }}', "g")
    endfunction

    let line = getline(".")
    let cleanLine = SubRight(SubLeft(line))
    call setline(".", cleanLine)
endfunction

function! MapLines(f, lineNumbers)
    for i in a:lineNumbers
        let line = getline(i)
        let cleanLine = a:f(line)
        call setline(i, cleanLine)
    endfor
endfunction

function! StripTrailingWhitespace()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

function! ChangeIndentWidth(old, new)
    let &l:tabstop=a:old
    setlocal noexpandtab
    %retab!
    let &l:tabstop=a:new
    setlocal expandtab
    %retab!
endfunction

function! WorkaroundNERDTreeToggle()
  try | :NERDTreeToggle | catch | :NERDTree | endtry
endfunction
