local vector2 = require("Util").vector2

local labelmt = {}

do
  local labelindex = {}
  labelmt.__index = labelindex

  function labelindex:update()
    self.position = self.position + self.velocity
    self.opacity = self.opacity - .0125
  end
end

return function(position, scale, color, text, visibleWhen)
  local t = {
    position = position,
    scale = scale,
    color = color,
    text = text,
    visiblewhen = visiblewhen,
    opacity = 2.,
    velocity = vector2(.0, -.5)
  }
  return setmetatable(t,labelmt)
end