function onResourceStart()
	TXD = engineLoadTXD ( "texture.txd" )
	engineImportTXD ( TXD, 8558 )
	engineImportTXD ( TXD, 8661 )
	engineImportTXD ( TXD, 2774 )
	engineImportTXD ( TXD, 8355 )
	engineImportTXD ( TXD, 8419 )
	engineImportTXD ( TXD, 10789 )
	engineImportTXD ( TXD, 10063 )
	engineImportTXD ( TXD, 3578 )
	engineImportTXD ( TXD, 9907 )
	engineImportTXD ( TXD, 18362 )
	engineImportTXD ( TXD, 18228 )
	engineImportTXD ( TXD, 10063 )
	engineImportTXD ( TXD, 2898 )
	
end
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), onResourceStart)