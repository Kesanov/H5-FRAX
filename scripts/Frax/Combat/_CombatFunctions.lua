


function DelayedSummonCreature(side, type, size, x, y, delay)
    if size < 1 then return end
   function Summon(side, type, size, x, y, delay)
       sleep(delay)
       SummonCreature(side, type, size, x, y)
   end
   startThread(Summon, side, type, size, x, y, delay)
end
