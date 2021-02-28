console.log('------------------ '..emu.framecount())

oot = require('oot')
save = oot.sav

function gameloop()
	local frame =  emu.framecount()
	
	local kok = save.equipment.kokiri_sword
	
	if math.fmod(tonumber(frame), 60) == 0 then
		console.log("Kokiri Sword: "..tostring(kok))
		console.log("frame: "..frame)
	end
	
end

event.onframestart(gameloop)
