local Accelerate = {}

Accelerate.new = function(duration, factor)
   return setmetatable(
      {
         duration = duration or 30,
         doublefactor = (factor or 1) * 2
      },
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            local t = frame / self.duration
            if self.doublefactor == 2 then
               return t * t
            else
               return math.pow(t, self.doublefactor)
            end
         end
      }
   )
end

return Accelerate
