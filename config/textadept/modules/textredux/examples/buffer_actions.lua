--[[--
Example on various ways to make the buffer interactive, that is responding to
user input. This example illustrates the use of implicit and explicit hotspots
using either function or table commands, as well as key commands and responding
directly to key presses.

@author Nils Nordman <nino at nordman.org>
@copyright 2012
@license MIT (see LICENSE)
]]

textredux = require 'textredux'

local M = {}

local tr_style = textredux.core.style
tr_style.action_style = { back = '#6e6e6e', fore = '#00FFFF' }

local function on_refresh(buffer)
  buffer:add_text('Function command: ')
  buffer:add_text('Show modifiers',
                  tr_style.action_style,
                  function(buffer, shift, ctl, alt, meta)
    local modifiers = ''
    if shift then modifiers = modifiers .. ' shift' end
    if ctl then modifiers = modifiers .. ' control' end
    if alt then modifiers = modifiers .. ' alt' end
    if meta then modifiers = modifiers .. ' meta' end
    ui.statusbar_text = "Selected with modifiers: " .. modifiers
  end)

  buffer:add_text('\nTable command: ')
  buffer:add_text('Snapopen user home', tr_style.action_style,
                  { io.snapopen, _USERHOME })

  buffer:add_text('\n\nExplicit hotspot: ')
  local start_pos = buffer.current_pos
  buffer:add_text('Click here somewhere\nto select a command',
                  tr_style.action_style)
  buffer:add_hotspot(start_pos, buffer.current_pos, textadept.menu.select_command)
end

local function on_keypress(buffer, key, code, shift, ctl, alt, meta)
  -- print all lowercase characters to the statusbar
  if key and string.match(key, '^[a-z]$') then
    ui.statusbar_text = key
    return true
  end
end

function M.create_action_buffer()
  local buffer = textredux.core.buffer.new('Action buffer')
  buffer.on_refresh = on_refresh
  buffer.on_keypress = on_keypress

  -- bind Control+T to simple message box
  buffer.keys.ct = function()
    ui.dialogs.msgbox{title='Testing', text='Test 1, 2, 3 …'}
  end

  buffer:show()
end

return M
