local Overshoot = {}

Overshoot.new = function(duration, tension)
   return setmetatable(
      {
         duration = duration or 30,
         tension = tension or 2
      },
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            local t = frame / self.duration
            t = t - 1
            return t * t * ((self.tension + 1) * t + self.tension) + 1
         end
      }
   )
end

return Overshoot
