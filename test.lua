local Accelerate = require 'accelerate'
local AccelerateDecelerate = require 'acceleratedecelerate'
local Anticipate = require 'anticipate'
local AnticipateOvershoot = require 'anticipateovershoot'
local Bounce = require 'bounce'
local Cycle = require 'cycle'
local Decelerate = require 'decelerate'
local Linear = require 'linear'
local Overshoot = require 'overshoot'

print('Accelerate #1')
local accelerate = Accelerate.new()
for frame = 0, 31 do
   print(accelerate[frame])
end

print('Accelerate #2')
accelerate = Accelerate.new(30, 2)
for frame = 0, 31 do
   print(accelerate[frame])
end

print('Accelerate-Decelerate Interpolator')
local acceleratedecelerate = AccelerateDecelerate.new()
for frame = 0, 31 do
   print(acceleratedecelerate[frame])
end

print('Anticipate #1')
local anticipate = Anticipate.new()
for frame = 0, 31 do
   print(anticipate[frame])
end

print('Anticipate #2')
anticipate = Anticipate.new(30, 3)
for frame = 0, 31 do
   print(anticipate[frame])
end

print('AnticipateOvershoot')
local anticipateovershoot = AnticipateOvershoot.new()
for frame = 0, 31 do
   print(anticipateovershoot[frame])
end

print('Bounce Interpolator')
local bounce = Bounce.new()
for frame = 0, 31 do
   print(bounce[frame])
end

print('Cycle')
local cycle = Cycle.new(30, 1)
for frame = 0, 31 do
   print(cycle[frame])
end

print('Decelerate')
local decelerate = Decelerate.new()
for frame = 0, 31 do
   print(decelerate[frame])
end

print('Linear')
local linear = Linear.new()
for frame = 0, 31 do
   print(linear[frame])
end

print('Overshoot')
local overshoot = Overshoot.new()
for frame = 0, 31 do
   print(overshoot[frame])
end
