# switch.lua
**Switch statement implication in Lua**
 
## Documentation
 
### Switch Module
 
```lua
local switch = require 'switch'
```
Returns a callable function for constructing Switch objects

 
### Switch Object

```lua
__call(variable)
```
Checks a specified variable amongst case statements. Uses :default if no value is found. If :default is not declared, this will error


```lua
self :case(value, callback)
```
Sets a case value to callback, returns the object so that it can be chained
self :default(callback)
Sets the default callback
 
 
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
Middleclass is distributed under the MIT license, read the [LISENCE](LISENCE) file for more detail.
