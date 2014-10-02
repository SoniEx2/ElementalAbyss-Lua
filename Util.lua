-- blame https://github.com/KateAdams for the eecummings names

--[[
FAQ:

Q: why's everything in the same module?
A: because then we load it all in one go

Q: why the do...ends?
A: Lua has a limit of 200 locals/upvalues **per scope**, so we make new scopes to get more
]]

local m = {}

do
  -- TODO
  local vector2mt = {}

  function vector2mt:__add(obj)
    return {
      x = self.x + obj.x,
      y = self.y + obj.y
    }
  end
  function vector2mt:__sub(obj)
    return {
      x = self.x - obj.x,
      y = self.y - obj.y
    }
  end

  m.vector2 = function(x, y)
    local t = {
      x = x,
      y = y
    }
    return setmetatable(t,vector2mt)
  end

end