command! -range DjangoTemplateSpaces <line1>,<line2>call DjangoTemplateSpaces()
command! -nargs=* ChangeIndentWidth call ChangeIndentWidth(<f-args>)
