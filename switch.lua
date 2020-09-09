local switch = {
    _VERSION     = 'switch.lua v0.0.1',
    _DESCRIPTION = 'switch statement implimation for Lua',
    _URL         = 'https://github.com/Shnerpy/switch.lua',
    _LICENSE     = [[
        MIT LICENSE
    
        Copyright (c) 2020 Soviet Kitsune (https://github.com/Shnerpy)
    
        Permission is hereby granted, free of charge, to any person obtaining a
        copy of this software and associated documentation files (the
        "Software"), to deal in the Software without restriction, including
        without limitation the rights to use, copy, modify, merge, publish,
        distribute, sublicense, and/or sell copies of the Software, and to
        permit persons to whom the Software is furnished to do so, subject to
        the following conditions:
    
        The above copyright notice and this permission notice shall be included
        in all copies or substantial portions of the Software.
    
        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
        OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
        MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
        IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
        CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
        TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
        SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    ]]
}

--[=[
@v Variable
@f Callback function
]=]

switch.__index = switch

switch.__call = function(self, v)
    local c = self._callbacks[v] or self._default
    assert(c, "No case statement defined for variable, and :default is not defined")
    c()
end

function switch.new()
    return setmetatable({_callbacks = {}}, switch)
end

function switch:case(v, f)
    self._callbacks[v] = f
    return self
end

function switch:default(f)
    self._default = f
    return self
end

return switch
