-- Test :e
test.keys(':e files/foo.xml')
test.key('enter')

test.assertEq(buffer.filename, 'files/foo.xml')

-- test completion
test.keys(':e files/1_1')
test.key('tab')

test.assertEq(buffer:get_text(), ':e files/1_10')
-- next tab shows completions
test.key('tab')
local t = buffer:get_text()

test.assert(t:find('1_10%.txt', nil, true))
test.assert(t:find('1_100%.txt', nil, true))

test.key('escape')

-- test completion with '..'
test.keys(':e ../test/files/1_1')
test.key('tab')

test.assertEq(buffer:get_text(), ':e %.%./test/files/1_10')
test.key('escape')

-- % should expand to the current filename
test.keys(':e %')
test.key('tab')
test.assertEq(buffer:get_text(), ':e files/foo%.xml')

-- Exit the entry to avoid confusion in later tests.
test.key('escape')
