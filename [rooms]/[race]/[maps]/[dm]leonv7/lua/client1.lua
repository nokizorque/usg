function palm ()
palmtxd = engineLoadTXD("files/gta_tree_palm.txd")
engineImportTXD(palmtxd, 622 )
local palmdff = engineLoadDFF('files/veg_palm03.dff', 0) 
engineReplaceModel(palmdff, 622)

end
addEventHandler( "onClientResourceStart", getResourceRootElement(getThisResource()), palm )
