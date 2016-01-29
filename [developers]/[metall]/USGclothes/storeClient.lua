local sx, sy = guiGetScreenSize()

local storeLocations = {
	{1223.0185546875, -955.0712890625, 42.9375, 0, 0, "Random"},
}

function initializeWindow()
	clothesWindow = guiCreateWindow((sx / 2) - 816, (sy / 2) - 201, 711, 466, "Clothes Store", false)
	categoriesGrid = guiCreateGridList(9, 22, 190, 174, false, clothesWindow)
	currentGrid = guiCreateGridList(9, 202, 190, 174, false, clothesWindow)
	allGrid = guiCreateGridList(205, 22, 496, 354, false, clothesWindow)
	buyButton = guiCreateButton(9, 379, 84, 34, "Buy Item", false, clothesWindow)
	buyCJButton = guiCreateButton(9, 417, 84, 34, "Buy CJ Skin", false, clothesWindow)
	closeButton = guiCreateButton(98, 417, 84, 34, "Close", false, clothesWindow)
	
	categ = guiGridListAddColumn(categoriesGrid, "Categories", 0.9)
	names = guiGridListAddColumn(allGrid, "Clothing Names", 0.9)
	current = guiGridListAddColumn(currentGrid, "Current Clothes", 0.9)
	
	guiWindowSetSizable(clothesWindow, false)
	guiSetVisible(clothesWindow, false)
	guiSetAlpha(clothesWindow, 1.00)
	guiSetProperty(buyButton, "NormalTextColour", "FFAAAAAA")
	guiSetProperty(buyCJButton, "NormalTextColour", "FFAAAAAA")
	guiSetProperty(closeButton, "NormalTextColour", "FFAAAAAA")
	
	addEventHandler("onClientGUIClick", closeButton, closeWin, false)
end
addEventHandler("onClientResourceStart", resourceRoot, initializeWindow)

function placeStores()
	for ind, dat in pairs(storeLocations) do
		local x, y, z = dat[1], dat[2], dat[3]
		marker = createMarker(x, y, z, "cylinder", 2, 200, 0, 0, 200)
		addEventHandler("onClientMarkerHit", marker, test)
	end
end
addEventHandler("onClientResourceStart", resourceRoot, placeStores)

function closeWin()
	guiSetVisible(clothesWindow, false)
	showCursor(false)
end

function test()
	guiSetVisible(clothesWindow, true)
	showCursor(true)
end
addCommandHandler("testcloth", test)