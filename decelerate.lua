local Decelerate = {}

Decelerate.new = function(duration, factor)
   return setmetatable(
      {
         duration = duration or 30,
         factor = factor or 1
      },
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            local t = frame / self.duration
            if self.factor == 1 then
               return 1 - (1 - t) * (1 - t);
            else
               return 1 - math.pow((1 - t), 2 * self.factor);
            end
         end
      }
   )
end

return Decelerate
