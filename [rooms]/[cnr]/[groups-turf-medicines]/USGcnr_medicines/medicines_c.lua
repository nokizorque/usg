local medicinesGUI = {}
function createDedicinesGUI()

local screenW, screenH = guiGetScreenSize()
    medicinesGUI.window = guiCreateWindow((screenW - 213) / 2, (screenH - 187) / 2, 213, 187, "USG - Medicines", false)
    medicinesGUI.medicineLabels = {}
    medicinesGUI.medicineRadios = {}
    local y = 26
    for medicine, _ in pairs(medicines) do
    medicinesGUI.medicineLabels[medicine] = guiCreateLabel(19, y, 85, 17,medicine..":",false,medicinesGUI.window)
    medicinesGUI.medicineRadios[medicine] =  guiCreateRadioButton(127, y, 100, 15, myMedicines and tostring(myMedicines[medicine]) or "0", false, medicinesGUI.window)
        y = y+35
    end
    medicinesGUI.amount = guiCreateEdit(9, y+10, 111, 22, "", false,medicinesGUI.window)
    medicinesGUI.take = guiCreateButton(137, y+10, 66, 28, "Take", false,medicinesGUI.window)
            guiSetProperty(medicinesGUI.take, "NormalTextColour", "FFAAAAAA")
    guiSetSize(medicinesGUI.window, 213, y+45, false)
    addEventHandler("onClientGUIClick", medicinesGUI.take, onTakeMedicine, false)
end

function updateMyMedicines(new)
    for medicine, amount in pairs(new) do
        myMedicines[medicine] = amount
    end
end

addEvent("USGcnr_medicines.recieveMedicines", true)
function recieveMedicines(medicines)
    if(not myMedicines) then myMedicines = medicines
    else updateMyMedicines(medicines) end
    if(isElement(medicinesGUI.window)) then
        for medicine, amount in pairs(medicines) do
        if(medicinesGUI.medicineRadios[medicine]) then
            guiSetText(medicinesGUI.medicineRadios[medicine], amount)
            end
        end
    end
end
addEventHandler("USGcnr_medicines.recieveMedicines", localPlayer, recieveMedicines)

function toggleDedicinesGUI()
    if(not isElement(medicinesGUI.window) or not guiGetVisible(medicinesGUI.window)) then
        openDedicinesGUI()
    else
        closeDedicinesGUI()
    end
end
addCommandHandler("medicines", toggleDedicinesGUI)
bindKey("F4","down","medicines")

function openDedicinesGUI()
    if(exports.USGrooms:getPlayerRoom() ~= "cnr") then return false end
    if(not isElement(medicinesGUI.window)) then
        createDedicinesGUI()
    else
        guiSetVisible(medicinesGUI.window, true)
    end
    showCursor(true)
end

function closeDedicinesGUI()
        guiSetVisible(medicinesGUI.window, false)
    showCursor(false)
end

addEventHandler("onPlayerExitRoom", localPlayer,
    function (prevRoom)
        if(prevRoom == "cnr") then
            myMedicines = nil
            activeMedicines = nil
            removeEventHandler("onClientRender", root, renderMedicines)         
            if(isElement(medicinesGUI.window)) then
                closeDedicinesGUI()
                destroyElement(medicinesGUI.window)
            end
        end
    end
)

addEventHandler("onClientResourceStart", root,
    function (res)
        if(source == resourceRoot and getResourceFromName("USGrooms") and getResourceState(getResourceFromName("USGrooms")) == "running"
        and exports.USGRooms:getPlayerRoom() == "cnr") then
            activeMedicines = {}
            triggerServerEvent("USGcnr_medicines.requestMedicines", localPlayer) -- this will also subscribe the user to updates
            addEventHandler("onClientRender", root, renderMedicines)
            addMedicineTypesToInventory()
        elseif(getResourceName(res) == "USGcnr_inventory") then
            addMedicineTypesToInventory()
        end
    end
)

function isResourceReady(name)
    return getResourceFromName(name) and getResourceState(getResourceFromName(name)) == "running"
end

function addMedicineTypesToInventory()
    if(isResourceReady("USGcnr_inventory")) then
        for name, medicine in pairs(medicines) do
            exports.USGcnr_inventory:create(medicine.key,name, ":USGcnr_medicines/"..medicine.key..".png")
        end
    end
end

addEventHandler("onPlayerJoinRoom", localPlayer,
    function (room)
        if(room == "cnr") then
            addMedicineTypesToInventory()
            activeMedicines = {}
            triggerServerEvent("USGcnr_medicines.requestMedicines", localPlayer) -- this will also subscribe the user to updates
            addEventHandler("onClientRender", root, renderMedicines)            
        end
    end
)

----

function getSelectedMedicine()
    for medicine, radio in pairs(medicinesGUI.medicineRadios) do
        if(guiRadioButtonGetSelected(radio)) then
            return medicine
        end
    end
    return false
end

function onTakeMedicine()
    local amount = tonumber(guiGetText(medicinesGUI.amount))
    if(not amount or amount <= 0) then
        exports.USGmsg:msg("Invalid number, must be more than 0!", 255, 0, 0)
        return
    end
    local medicine = getSelectedMedicine()
    if(not medicine) then
        exports.USGmsg:msg("You must select a medicine!", 255, 0, 0)
        return      
    end
    takeMedicine(medicine, amount)
end