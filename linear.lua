local Linear = {}

Linear.new = function(duration)
   return setmetatable(
      {duration = duration or 30},
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            return frame / self.duration
         end
      }
   )
end

return Linear
