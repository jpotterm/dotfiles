{user.key}: key(user.key)
{user.key} {user.times} times: key("{user.key}:{user.times}")

undo: key(cmd-z)
redo: key(shift-cmd-z)
copy: key(cmd-c)
paste: key(cmd-v)
glue: key(cmd-v)

slice: key(cmd-x)
slice {user.times} times: key("cmd-x:{user.times}")

word <word>: user.word(word)
title <word>: user.title(word)
upper <word>: user.upper(word)
snake <word>: user.snake(word)
method <word>: user.method(word)
say <phrase>$: user.say(phrase)

{user.modifier}+ {user.key}: key("{user.join_dashes(user.modifier_list)}-{user.key}")
{user.modifier}+ {user.key} {user.times} times: key("{user.join_dashes(user.modifier_list)}-{user.key}:{user.times}")

again: core.repeat_command(1)
again {user.times} times: core.repeat_command(user.parse_int(user.times))

click: mouse_click(0)

double click:
    mouse_click(0)
    mouse_click(0)

scroll down: mouse_scroll(300)
scroll up: mouse_scroll(-300)

teleport from:
    mouse_click(0)
    mouse_click(0)
    key(cmd-c)

teleport to:
    mouse_click(0)
    key(cmd-v)

teleport over:
    mouse_click(0)
    mouse_click(0)
    key(cmd-v)

const: insert("const ")
let: insert("let ")

^talon sleep [<phrase>]$: speech.disable()
