function render()
	
	local x,y,z = getElementPosition(localPlayer)
	local Mult = 1
		if(getPedOccupiedVehicle (localPlayer))then
			local vehicle = getPedOccupiedVehicle (localPlayer)
			x,y,z = getElementPosition(vehicle)
			
			if(vehicles[getVehicleName(vehicle)])then
				local vehicleData = vehicles[getVehicleName(vehicle)]
				Mult = vehicleData.Mult
			end
			
		end
		
	dxDrawMaterialLine3D ( x + apps.account.position.x * Mult,		y + apps.account.position.y * Mult,	z + apps.account.position.z * Mult + apps.account.size.default * Mult,		x + apps.account.position.x * Mult,	y + apps.account.position.y * Mult,	z + apps.account.position.z * Mult,	apps.account.icon,	apps.account.size.default * Mult	)
	dxDrawMaterialLine3D ( x + apps.call.position.x * Mult,		y + apps.call.position.y * Mult,		z + apps.call.position.z * Mult + apps.call.size.default * Mult,			x + apps.call.position.x * Mult,		y + apps.call.position.y * Mult,		z + apps.call.position.z * Mult,		apps.call.icon,		apps.call.size.default * Mult		)
	dxDrawMaterialLine3D ( x + apps.gps.position.x * Mult,			y + apps.gps.position.y * Mult,		z + apps.gps.position.z * Mult + apps.gps.size.default * Mult,				x + apps.gps.position.x * Mult,	 	y + apps.gps.position.y * Mult,		z + apps.gps.position.z * Mult,		apps.gps.icon,		apps.gps.size.default * Mult		)
	dxDrawMaterialLine3D ( x + apps.music.position.x * Mult,		y + apps.music.position.y * Mult,		z + apps.music.position.z * Mult + apps.music.size.default * Mult,			x + apps.music.position.x * Mult, 		y + apps.music.position.y * Mult,		z + apps.music.position.z * Mult,		apps.music.icon,	apps.music.size.default * Mult		)
	dxDrawMaterialLine3D ( x + apps.weapons.position.x * Mult,		y + apps.weapons.position.y * Mult,	z + apps.weapons.position.z * Mult + apps.weapons.size.default * Mult,		x + apps.weapons.position.x * Mult,	y + apps.weapons.position.y * Mult,	z + apps.weapons.position.z * Mult,	apps.weapons.icon,	apps.weapons.size.default * Mult	)
	dxDrawMaterialLine3D ( x + apps.messages.position.x * Mult,	y + apps.messages.position.y * Mult,	z + apps.messages.position.z * Mult + apps.messages.size.default * Mult,	x + apps.messages.position.x * Mult,	y + apps.messages.position.y * Mult,	z + apps.messages.position.z * Mult,	apps.messages.icon,	apps.messages.size.default * Mult	)
	dxDrawMaterialLine3D ( x + apps.money.position.x * Mult,		y + apps.money.position.y * Mult,		z + apps.money.position.z * Mult + apps.money.size.default * Mult,			x + apps.money.position.x * Mult,		y + apps.money.position.y * Mult,		z + apps.money.position.z * Mult,		apps.money.icon,	apps.money.size.default * Mult		)

end

addEventHandler("onClientRender", root,render)