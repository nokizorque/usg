function onResourceStart()
	TXD = engineLoadTXD ( "texture.txd" )
	engineImportTXD ( TXD, 3502 )
	engineImportTXD ( TXD, 11484 )
	engineImportTXD ( TXD, 1655 )
	engineImportTXD ( TXD, 9131 )
	engineImportTXD ( TXD, 4585 )
	engineImportTXD ( TXD, 8557 )
	engineImportTXD ( TXD, 8558 )
	engineImportTXD ( TXD, 17002 )
	engineImportTXD ( TXD, 8661 )
	engineImportTXD ( TXD, 2774 )
	engineImportTXD ( TXD, 17015 )
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
	engineImportTXD ( TXD, 13562 )
	engineImportTXD ( TXD, 6863 )
	engineImportTXD ( TXD, 8838 ) --rd
	
	engineSetModelLODDistance ( 13132 , 300 )
	engineSetModelLODDistance ( 16146 , 300 )
	engineSetModelLODDistance ( 17523 , 300 )
	engineSetModelLODDistance ( 18102 , 300 )
	engineSetModelLODDistance ( 2232 , 300 )
	engineSetModelLODDistance ( 14820 , 300 )
	engineSetModelLODDistance ( 3533 , 300 )
	engineSetModelLODDistance ( 16151 , 300 )
	engineSetModelLODDistance ( 2774 , 300 )
	engineSetModelLODDistance ( 8322 , 300 )
	
end
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), onResourceStart)