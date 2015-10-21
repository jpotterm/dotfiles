function! CssPrefix(...)
    let ieVersion = (a:0 >= 1) ? a:1 : "8"
    execute "%!postcss --use autoprefixer --autoprefixer.browsers \"last 1 Chrome versions, last 1 Firefox versions, last 1 Safari versions, Explorer >= " . ieVersion . "\""
endfunction

function! FormatFile()
    if &ft == 'javascript'
        :%!python -m json.tool
    elseif &ft == 'xml'
        :%!tidy -i -xml -wrap 0 -config <(echo -e 'indent-spaces: 4') 2>/dev/null
    elseif &ft == 'html'
        :%!tidy -i -wrap 0 -asxhtml -utf8 -config <(echo -e 'indent-spaces: 4') 2>/dev/null
    endif
endfunction

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
