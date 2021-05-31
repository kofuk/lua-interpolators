local AnticipateOvershoot = {}

AnticipateOvershoot.new = function(duration, tension, extratension)
   return setmetatable(
      {
         duration = duration or 30,
         tension = (tension or 2) * (extratension or 1.5)
      },
      {
         __index = function(self, frame)
            if frame > self.duration then
               return 1
            end

            local t = frame / self.duration
            if t < 0.5 then
               return 0.5 * AnticipateOvershoot.a(t * 2.0, self.tension)
            else
               return 0.5 * (AnticipateOvershoot.o(t * 2.0 - 2.0, self.tension) + 2.0)
            end
         end
      }
   )
end

AnticipateOvershoot.a = function(t, s)
   return t * t * ((s + 1) * t - s)
end

AnticipateOvershoot.o = function(t, s)
   return t * t * ((s + 1) * t + s)
end

return AnticipateOvershoot
