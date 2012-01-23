local StackTracePlus = require 'StackTracePlus/src/StackTracePlus'

local _M = {}

local old_traceback = debug.traceback
function _M.enable()
    debug.traceback = StackTracePlus.stacktrace
end

function _M.disable()
    debug.traceback = old_traceback
end    
    
return _M