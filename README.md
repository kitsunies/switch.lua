# switch.lua
**Switch statement implication in Lua**

### Features
* Implemented in pure Lua: works with **[5.1, 5.2, 5.3, 5.4](https://www.lua.org/download.html)** and **[JIT](https://luajit.org/download.html)**
* Tiny: around 40sloc, 2kb
 
## Usage

### Switch Module

The [switch.lua](switch.lua) file should be dropped somewhere your Lua interpreter will be able to find it and required by it:
```lua
local switch = require 'switch'
```
Returns a callable function for constructing switch objects

 
### Switch Object

```lua
__call(variable)
```
Checks a specified variable amongst case statements. Uses `:default` if no value is found. If `:default` is not declared, this will error


```lua
self :case(value, callback)
```
Sets a case value to callback, returns the object so that it can be chained self `:default(callback)`. Sets the default callback
 

## Example

```lua
local switch = require 'switch'
 
local numbercase = switch()
    :case(10, function()
        print("Hello Ten")
    end)

    :case(20, function()
        print("Hello Twenty")
    end)

    :default(function()
        print("Unrecognised")
    end)
 
SpeedCase(15 + 5)
```
Returns

```lua
>>> Hello Twenty
```

## License
This library is free software; you can redistribute and/or modify it under the terms of the MIT license. See [LICENSE](LICENSE) for details.
