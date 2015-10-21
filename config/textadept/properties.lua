local buffer = buffer

-- Multiple Selection
buffer.multiple_selection = true
buffer.additional_selection_typing = true
buffer.rectangular_selection_modifier = (WIN32 or OSX) and buffer.MOD_ALT or
                                                           buffer.MOD_SUPER
-- Scrolling
buffer.h_scroll_bar = false
buffer.v_scroll_bar = false
buffer.end_at_last_line = false

-- Caret and Selection Styles
buffer.caret_line_visible = not CURSES
buffer.caret_period = 0
buffer.caret_style = buffer.CARETSTYLE_BLOCK

-- Annotations
buffer.annotation_visible = buffer.ANNOTATION_BOXED

-- Other
buffer.buffered_draw = not CURSES and not OSX -- Quartz buffers drawing on OSX

-- Tabs and Indentation Guides
buffer.tab_width = 4
buffer.use_tabs = false
buffer.indent = 4
buffer.tab_indents = true
buffer.back_space_un_indents = true
buffer.indentation_guides = buffer.IV_LOOKBOTH

-- Line Wrapping
buffer.wrap_mode = buffer.WRAP_WORD
buffer.wrap_indent_mode = buffer.WRAPINDENT_INDENT
