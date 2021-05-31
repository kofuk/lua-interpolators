local Cycle = {}

Cycle.new = function(duration, cycles)
   return setmetatable(
      {
         duration = duration or 30,
         cycles = cycles or 1,
      },
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            local t = frame / self.duration
            return math.sin(2 * self.cycles * math.pi * t)
         end
      }
   )
end

return Cycle
