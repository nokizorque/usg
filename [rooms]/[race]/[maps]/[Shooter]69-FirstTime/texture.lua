function onResourceStart()
	TXD = engineLoadTXD ( "texture.txd" )
	engineImportTXD ( TXD, 3502 )
	engineImportTXD ( TXD, 11484 )
	engineImportTXD ( TXD, 18225 )
	engineImportTXD ( TXD, 4585 )
	engineImportTXD ( TXD, 1655 )
	engineImportTXD ( TXD, 8557 )
	engineImportTXD ( TXD, 8558 )
	engineImportTXD ( TXD, 8661 )
	engineImportTXD ( TXD, 2774 )
	engineImportTXD ( TXD, 8355 )
	engineImportTXD ( TXD, 8419 )
	engineImportTXD ( TXD, 8411 )
	engineImportTXD ( TXD, 10789 )
	engineImportTXD ( TXD, 10063 )
	engineImportTXD ( TXD, 3578 )
	engineImportTXD ( TXD, 9907 )
	engineImportTXD ( TXD, 18362 )
	engineImportTXD ( TXD, 18228 )
	engineImportTXD ( TXD, 10063 )
	engineImportTXD ( TXD, 2898 )
	engineImportTXD ( TXD, 7290 )
	engineImportTXD ( TXD, 9132 )
	engineImportTXD ( TXD, 16258 )
	engineImportTXD ( TXD, 8661 )
	engineImportTXD ( TXD, 8394 )
	engineImportTXD ( TXD, 6863 )
	engineImportTXD ( TXD, 1243 )
	engineImportTXD ( TXD, 8375 )
	engineImportTXD ( TXD, 8356 )
	engineImportTXD ( TXD, 13594 )
	engineImportTXD ( TXD, 1633 )
	engineImportTXD ( TXD, 11258 )
	engineImportTXD ( TXD, 8838 ) --rd
	
	engineSetModelLODDistance ( 18102 , 300 )
	engineSetModelLODDistance ( 2232 , 300 )
	engineSetModelLODDistance ( 14820 , 300 )
	engineSetModelLODDistance ( 3533 , 300 )
	engineSetModelLODDistance ( 16151 , 300 )
	engineSetModelLODDistance ( 8411 , 300 )
	engineSetModelLODDistance ( 1360 , 300 )
	engineSetModelLODDistance ( 809 , 300 )
	engineSetModelLODDistance ( 9833 , 300 )
	
end
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), onResourceStart)