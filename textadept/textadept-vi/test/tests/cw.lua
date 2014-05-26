-- Test the change word command
test.open('words.txt')
local lineno = test.lineno
local colno = test.colno
local assertEq = test.assertEq
test.key('j')
assertEq(colno(), 0)
assertEq(lineno(), 1)
assertEq(buffer:get_cur_line(), "hey bee cee dee ee eff\n")
-- Test changing the first word
test.key('c', 'w', 'f', 'o', 'o', 'escape')
assertEq(colno(), 2)
assertEq(lineno(), 1)
assertEq(buffer:get_cur_line(), "foo bee cee dee ee eff\n")
-- Move forward a couple of words (to the cee), then repeat
test.key('w', 'w', '.')
assertEq(buffer:get_cur_line(), "foo bee foo dee ee eff\n")
-- undo and check it's been reverted
test.key('u', 'u')
assertEq(buffer:get_cur_line(), "hey bee cee dee ee eff\n")
-- Try at the end of a line.
test.key('^', '5', 'w')
assertEq(colno(), 19)
test.key('c', 'w', 'X', 'escape')
assertEq(buffer:get_cur_line(), "hey bee cee dee ee X\n")
