local AccelerateDecelerate = {}

AccelerateDecelerate.new = function(duration)
   return setmetatable(
      {duration = duration or 30},
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            local t = frame / self.duration
            return (math.cos((t + 1) * math.pi) / 2) + 0.5;
         end
      }
   )
end

return AccelerateDecelerate
