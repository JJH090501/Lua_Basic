local Car = {}
Car.__index = Car

function Car:new(brand, year)
  local self = setmetatable({}, Car)
  self.brand = brand
  self.year = year
  return self
end

function Car:getInfo()
  return string.format("%s %d", self.brand, self.year)
end

local car_1 = Car:new("Toyota", 2002)
print(car_1:getInfo())