local locations = {
    ["Ammunation"] = {
        {x = 2153.5986328125, y = 943.96484375, z = 10.8203125},
    },
    ["Police department"] = {
        {x = 2320.189453125, y = 2418.451171875, z = 10.470796585083}, -- LV
        {x = -1604.0625, y = 719.1123046875, z = 11.700479507446}, -- SF
        {x = 1537.74609375, y = -1671.3037109375, z = 13.546875}, -- LS
    },
    ["Fuel station"] = {
        {x = 2200.775390625, y = 2473.2236328125, z = 10.547392845154},
        {x = 2120.6484375, y = 948.8623046875, z = 10.540092468262},
    },
}

local gpsGUI = {}

addEventHandler("onClientResourceStart", resourceRoot,
    function()
        gpsGUI.window = guiCreateWindow(0.77, 0.24, 0.22, 0.51, apps.gps.name, true)
        guiWindowSetSizable(gpsGUI.window, false)

        gpsGUI.girdlistPlayer = guiCreateGridList(0.03, 0.04, 0.94, 0.34, true, gpsGUI.window)
        guiGridListAddColumn(gpsGUI.girdlistPlayer, "Player", 0.9)
        gpsGUI.editPlayer = guiCreateEdit(0.03, 0.38, 0.94, 0.06, "", true, gpsGUI.window)
        gpsGUI.buttonPlayerMark = guiCreateButton(0.03, 0.46, 0.46, 0.07, "Mark", true, gpsGUI.window)
        guiSetProperty(gpsGUI.buttonPlayerMark, "NormalTextColour", "FFAAAAAA")
        gpsGUI.buttonPlayerUnMark = guiCreateButton(0.51, 0.46, 0.46, 0.07, "Unmark", true, gpsGUI.window)
        guiSetProperty(gpsGUI.buttonPlayerUnMark, "NormalTextColour", "FFAAAAAA")
        gpsGUI.labelDestination = guiCreateLabel(0.03, 0.52, 0.94, 0.06, "Destination", true, gpsGUI.window)
        guiLabelSetHorizontalAlign(gpsGUI.labelDestination, "center", false)
        guiLabelSetVerticalAlign(gpsGUI.labelDestination, "center")
        gpsGUI.gridlistLocation = guiCreateGridList(0.03, 0.59, 0.94, 0.31, true, gpsGUI.window)
        guiGridListAddColumn(gpsGUI.gridlistLocation, "Location", 0.9)
        gpsGUI.buttonLocationMark = guiCreateButton(0.03, 0.91, 0.46, 0.07, "Mark", true, gpsGUI.window)
        guiSetProperty(gpsGUI.buttonLocationMark, "NormalTextColour", "FFAAAAAA")
        gpsGUI.buttonLocationUnMark = guiCreateButton(0.51, 0.91, 0.46, 0.07, "Unmark", true, gpsGUI.window)
        guiSetProperty(gpsGUI.buttonLocationUnMark, "NormalTextColour", "FFAAAAAA")  

		addEventHandler("onClientGUIChanged", gpsGUI.editPlayer, gpsfillPlayerGrid, false)
		addEventHandler("onClientGUIClick", gpsGUI.buttonPlayerMark , gpsmarkPlayer, false)
		addEventHandler("onClientGUIClick", gpsGUI.buttonPlayerMark , gpsunmarkPlayer, false)
		addEventHandler("onClientGUIClick", gpsGUI.buttonLocationMark, gpslocmark , false)
		addEventHandler("onClientGUIClick", gpsGUI.buttonLocationUnMark, gpsunmarkPlayer , false)
		
		guiSetVisible ( gpsGUI.window, false )		
    end
)

local function showgpsGUI()
if(not exports.USGaccounts:isPlayerLoggedIn()) then return end
	if(guiGetVisible(gpsGUI.window) == false)then
		guiSetInputMode("no_binds_when_editing")
		guiSetVisible ( gpsGUI.window, true )
		gpsfillPlayerGrid()
		gpsfillLocationGrid()
	end
end

addEvent(apps.gps.event,true)
addEventHandler(apps.gps.event,root,showgpsGUI)

local function hidegpsGUI()
	if(guiGetVisible(gpsGUI.window) == true)then
		guiSetVisible ( gpsGUI.window, false )
		showCursor(false)
	end
end

bindKey( binds.closeAllApps.key, binds.closeAllApps.keyState,hidegpsGUI)


function gpsfillPlayerGrid()
    guiGridListClear ( gpsGUI.girdlistPlayer )
    local filter = guiGetText(gpsGUI.editPlayer)
    for i, player in ipairs(getElementsByType("player")) do
        local name = getPlayerName(player)
        if(player ~= localPlayer and (filter == "" or string.find(name:lower(), filter:lower()))) then
        local row = guiGridListAddRow ( gpsGUI.girdlistPlayer )
            guiGridListSetItemText(gpsGUI.girdlistPlayer, row, 1, name, false, false)
            guiGridListSetItemData(gpsGUI.girdlistPlayer, row, 1, player)
        end
    end
end

function gpsfillLocationGrid()
    guiGridListClear ( gpsGUI.gridlistLocation )
    local px,py,pz = getElementPosition(localPlayer)
    for type, typeLocations in pairs(locations) do
    local row = guiGridListAddRow ( gpsGUI.gridlistLocation )
        guiGridListSetItemText(gpsGUI.gridlistLocation, row, 1, type, false, false)
    end
end

function gpsmarkPlayer()
    local selected = guiGridListGetSelectedItem(gpsGUI.girdlistPlayer)
    if(selected) then
        local player = guiGridListGetItemData(gpsGUI.girdlistPlayer, selected, 1)
        if(isElement(player)) then
            exports.USGcnr_gps:setDestination(getPlayerName(player), player)
            gpsupdateDestination()
        else
            exports.USGmsg:msg("This player has quit.", 255,0,0)        
        end
    else
        exports.USGmsg:msg("You did not select a player.", 255,0,0)
    end
end

function gpsupdateDestination()
    local destination = exports.USGcnr_gps:getDestination()
    local destinationName = "none"
    if(destination) then
        destinationName = destination.name or "Unknown"
    end
    guiSetText(gpsGUI.labelDestination, "Destination: "..destinationName)
end

function gpsunmarkPlayer()
    exports.USGcnr_gps:removeDestination()
end

function gpslocmark()
    if(getElementInterior(localPlayer) ~= 0) then
        exports.USGmsg:msg("You can only set GPS when outside.", 255,0,0)
        return false
    end
    local selected = guiGridListGetSelectedItem(gpsGUI.gridlistLocation)
    if(selected) then
        local locationType = guiGridListGetItemText(gpsGUI.gridlistLocation, selected, 1)
        local distance = false
        local closest = false
        local px,py,pz = getElementPosition(localPlayer)
        for i, location in ipairs(locations[locationType]) do
            local dist = getDistanceBetweenPoints2D(px,py,location.x,location.y)
            if(not closest or dist < distance) then
                closest = location
                distance = dist
            end
        end
        exports.USGcnr_gps:setDestination(guiGridListGetItemText(gpsGUI.gridlistLocation, selected, 1), closest.x, closest.y, closest.z)
        gpsupdateDestination()
    else
        exports.USGmsg:msg("You did not select a location.", 255,0,0)
    end 
end