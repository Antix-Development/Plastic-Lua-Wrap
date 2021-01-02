--[[
  Plastic Lua Wrap color theme test file
]]

---@class Foo
Foo = Core.class()

---
--- Create a new Foo
function foo:init()
  self.foobar = 'foobar'
end

---
--- Multiply the given number by a random amount
---@param input number Number to multiply
---@return number Multiplied number
function foo:bar(n)
  return n * math.random() * 100
end

local foo = Foo.new() -- Let's make foo!

local rng, cos = math.random, math.cos -- Localize these

local n = foo:bar(rng(1, 15)) -- Bar that foo!

-- Now for the actual Gideros API!!!

local t = Texture.new('test.png')

local b = Bitmap.new(t)

local s = Sprite.new()

s:addChild(b)
s:setPosition(128, 256)

local x, y = s:getPosition()

for i = 1, 10 do
  print(rng(1, 10))
end
