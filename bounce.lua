Bounce = {}

Bounce.new = function(duration)
   return setmetatable(
      {duration = duration or 30},
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            local t = frame / self.duration
            t = t * 1.1226
            if t < 0.3535 then
               return Bounce.bounce(t)
            elseif t < 0.7408 then
               return Bounce.bounce(t - 0.54719) + 0.7
            elseif t < 0.9644 then
               return Bounce.bounce(t - 0.8526) + 0.9
            else
               return Bounce.bounce(t - 1.0435) + 0.95
            end
         end
      }
   )
end

Bounce.bounce = function(t)
   return t * t * 8;
end

return Bounce
