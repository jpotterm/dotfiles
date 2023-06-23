{user.key}: key(user.key)
{user.key} {user.times} times: key("{user.key}:{user.times}")

undo: key(cmd-z)
redo: key(shift-cmd-z)
copy: key(cmd-c)
paste: key(cmd-v)
slice: key(cmd-x)

word <word>: insert(word)
title <word>: insert(user.title_case(word))
upper <word>: insert(user.upper_case(word))

{user.modifier}+ {user.key}: key("{user.join_dashes(user.modifier_list)}-{user.key}")
{user.modifier}+ {user.key} {user.times} times: key("{user.join_dashes(user.modifier_list)}-{user.key}:{user.times}")

again: core.repeat_command(1)
again {user.times} times: core.repeat_command(user.parse_int(user.times))

^talon sleep [<phrase>]$: speech.disable()
