app.name: Code
-

style: key(shift-alt-f)
style selection: key(cmd-k cmd-f)
#jump back: key(ctrl--)
#jump forward: key(ctrl-shift--)
slap: key(cmd-enter)
shoe: key(ctrl-alt-cmd-shift-x)
save: key(cmd-s)

indent: key(cmd-])
indent {user.times} times: key("cmd-]:{user.times}")
dedent: key(cmd-[)
dedent {user.times} times: key("cmd-[:{user.times}")

select: key(cmd-d)
select {user.times} times: key("cmd-d:{user.times}")

duplicate: key(ctrl-c)
duplicate {user.times} times: key("ctrl-c:{user.times}")

expand: key(ctrl-shift-cmd-right)
expand {user.times} times: key("ctrl-shift-cmd-right:{user.times}")
shrink: key(ctrl-shift-cmd-left)
shrink {user.times} times: key("ctrl-shift-cmd-left:{user.times}")

snip comment: key(cmd-/)
snip next: key(ctrl-alt-cmd-shift-z)
snip previous: key(ctrl-alt-cmd-shift-y)
snip assign: key(ctrl-alt-cmd-shift-a)
snip if: key(ctrl-alt-cmd-shift-b)
snip else if: key(ctrl-alt-cmd-shift-c)
snip else: key(ctrl-alt-cmd-shift-d)
snip for: key(ctrl-alt-cmd-shift-e)
snip lambda: key(ctrl-alt-cmd-shift-f)
snip function: key(ctrl-alt-cmd-shift-g)
#snip equals: key(ctrl-alt-cmd-shift-h)
#snip not equals: key(ctrl-alt-cmd-shift-i)
snip equals: insert(" === ")
snip not equals: insert(" !== ")
snip element: key(ctrl-alt-cmd-shift-j)
#snip and: key(ctrl-alt-cmd-shift-k)
#snip or: key(ctrl-alt-cmd-shift-l)
snip and: insert(" && ")
snip or: insert(" || ")
snip ternary: key(ctrl-alt-cmd-shift-m)
snip return: key(ctrl-alt-cmd-shift-n)
snip rule: key(ctrl-alt-cmd-shift-o)
snip less than: insert(" < ")
snip less equal: insert(" <= ")
snip greater than: insert(" > ")
snip greater equal: insert(" >= ")
snip plus: insert(" + ")
snip minus: insert(" - ")

take brace:
    key(escape)
    sleep(50ms)
    key(s a { V i)

take paren:
    key(escape)
    sleep(50ms)
    key(s a ( V i)

take square:
    key(escape)
    sleep(50ms)
    key(s a [ V i)

take indent:
    key(escape)
    sleep(50ms)
    key(s i i i)

take paragraph:
    key(escape)
    sleep(50ms)
    key(s a p i)

between brace:
    key(escape)
    sleep(50ms)
    key(s i { i)

between paren:
    key(escape)
    sleep(50ms)
    key(s i ( i)

between square:
    key(escape)
    sleep(50ms)
    key(s i [ i)

between apostrophe:
    key(escape)
    sleep(50ms)
    key(s i ' i)

between double apostrophe:
    key(escape)
    sleep(50ms)
    key(s i " i)

around brace:
    key(escape)
    sleep(50ms)
    key(s a { i)

around paren:
    key(escape)
    sleep(50ms)
    key(s a ( i)

around square:
    key(escape)
    sleep(50ms)
    key(s a [ i)

around apostrophe:
    key(escape)
    sleep(50ms)
    key(s a ' i)

around double apostrophe:
    key(escape)
    sleep(50ms)
    key(s a " i)

next {user.key}:
    key(escape)
    sleep(50ms)
    key(t)
    key(user.key)
    key(a)

next shift {user.key}:
    key(escape)
    sleep(50ms)
    key(t)
    key("shift-{user.key}")
    key(a)

previous {user.key}:
    key(escape)
    sleep(50ms)
    key(T)
    key(user.key)
    key(a)

previous shift {user.key}:
    key(escape)
    sleep(50ms)
    key(T)
    key("shift-{user.key}")
    key(a)

jump forward {user.key} {user.key}:
    key(escape)
    sleep(50ms)
    key(f)
    key(user.key_1)
    key(user.key_2)
    key(a)

jump back {user.key} {user.key}:
    key(escape)
    sleep(50ms)
    key(F)
    key(user.key_1)
    key(user.key_2)
    key(a)
