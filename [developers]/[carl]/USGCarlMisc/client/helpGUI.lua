helpGUI = {}

addEventHandler("onClientResourceStart", resourceRoot,
    function()
        helpGUI.window = guiCreateWindow(0.83, 0.80, 0.17, 0.20, "", true)
        guiWindowSetSizable(helpGUI.window, false)

        helpGUI.label = guiCreateLabel(0.04, 0.16, 0.95, 0.79, "", true, helpGUI.window)
			
		--guiSetVisible(helpGUI.window,false)
    end
)
