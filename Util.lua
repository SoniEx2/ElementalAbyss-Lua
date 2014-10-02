-- blame https://github.com/KateAdams for the eecummings names

local M = {}

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

  M.vector2 = function(x, y)
    local t = {
      x = x,
      y = y
    }
    return setmetatable(t,vector2mt)
  end

end