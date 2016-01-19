local skin = {}
skin.name = "Edited"

local rgbGUI = {}

local DefaultSkinColor = {  
        {"Selection",0,128,128}, 
        {"Hover" , 128,128,128},
        {"Window" , 0,0,0},
        {"Scrollarea" ,0,0,0},
        {"Slider" , 0,0,0},
        {"Combobox" , 0,0,0},
        {"Gridlist",0,0,0},
        {"Gridlist Header" ,0,0,0},
        {"Gridlist Row" , 0,0,0},
        {"Gridlist Row Selected" , 50,50,100},
        {"Check Box ", 0,0,0},
        {"Radio Button" , 0,0,0},
        {"Label" , 255,255,255},
        {"Memo", 255,255,255},
        {"Editbox" , 255,255,255},
        {"Tabpanel" , 0,0,0},
        {"Tabpanel Header" , 0,51,51},
        {"Text" ,255,255,255},
        {"Border" , 0,128,128},
        {"Title Color" , 0,128,128}
       }

local skinColor = {  
        {"Selection",0,128,128}, 
        {"Hover" , 128,128,128},
        {"Window" , 0,0,0},
        {"Scrollarea" ,0,0,0},
        {"Slider" , 0,0,0},
        {"Combobox" , 0,0,0},
        {"Gridlist",0,0,0},
        {"Gridlist Header" ,0,0,0},
        {"Gridlist Row" , 0,0,0},
        {"Gridlist Row Selected" , 50,50,100},
        {"Check Box ", 0,0,0},
        {"Radio Button" , 0,0,0},
        {"Label" , 255,255,255},
        {"Memo", 255,255,255},
        {"Editbox" , 255,255,255},
        {"Tabpanel" , 0,0,0},
        {"Tabpanel Header" , 0,51,51},
        {"Text" ,255,255,255},
        {"Border" , 0,128,128},
        {"Title Color" , 0,128,128}
       }
       
function table.copy(tab, recursive)
    local ret = {}
    for key, value in pairs(tab) do
        if (type(value) == "table") and recursive then ret[key] = table.copy(value)
        else ret[key] = value end
    end
    return ret
end
	   
function newcolor()
        skin.defaultColors = {
                selection = tocolor(skinColor[1][2],skinColor[1][3],skinColor[1][4],210),
                hover = tocolor(skinColor[2][2],skinColor[2][3],skinColor[2][4],215),
                window = tocolor(skinColor[3][2],skinColor[3][3],skinColor[3][4],190),
                scrollarea = tocolor(skinColor[4][2],skinColor[4][3],skinColor[4][4],130),
                slider = tocolor(skinColor[5][2],skinColor[5][3],skinColor[5][4],190),
                combobox = tocolor(skinColor[6][2],skinColor[6][3],skinColor[6][4],190),
                gridlist = tocolor(skinColor[7][2],skinColor[7][3],skinColor[7][4],160),
                gridlist_header = tocolor(skinColor[8][2],skinColor[8][3],skinColor[8][4],160),
                gridlist_row_bg = tocolor(skinColor[9][2],skinColor[9][3],skinColor[9][4],160),
                gridlist_row_selected = tocolor(skinColor[10][2],skinColor[10][3],skinColor[10][4],200),
                checkbox = tocolor(skinColor[11][2],skinColor[11][3],skinColor[11][4],190),
                radiobutton = tocolor(skinColor[12][2],skinColor[12][3],skinColor[12][4],190),
                label = tocolor(skinColor[13][2],skinColor[13][3],skinColor[13][4]),
                memo = tocolor(skinColor[14][2],skinColor[14][3],skinColor[14][4]),
                editbox = tocolor(skinColor[15][2],skinColor[15][3],skinColor[15][4]),
                tabpanel = tocolor(skinColor[16][2],skinColor[16][3],skinColor[16][4]),
                tabpanel_header = tocolor(skinColor[17][2],skinColor[17][3],skinColor[17][4],220),
                text = tocolor(skinColor[18][2],skinColor[18][3],skinColor[18][4],220),
                border = tocolor(skinColor[19][2],skinColor[19][3],skinColor[19][4],250),
                title = tocolor(skinColor[20][2],skinColor[20][3],skinColor[20][4],200),
                }
                
                
                skin.defaultColors.window_title_bar = skin.defaultColors.selection
                skin.defaultColors.button = skin.defaultColors.selection
end
       
newcolor()

function refreshRGB()
    exports.USGGUI:gridlistClear( rgbGUI.gridlist)
    for k, row in ipairs (skinColor) do 
    local rows = exports.USGGUI:gridlistAddRow(rgbGUI.gridlist)
    exports.USGGUI:gridlistSetItemText(rgbGUI.gridlist, rows, 1, row[1])
    exports.USGGUI:gridlistSetItemText(rgbGUI.gridlist, rows, 2, tostring (row[2]))
    exports.USGGUI:gridlistSetItemText(rgbGUI.gridlist, rows, 3, tostring (row[3]))
    exports.USGGUI:gridlistSetItemText(rgbGUI.gridlist, rows, 4, tostring (row[4]))
    exports.USGGUI:gridlistSetItemData(rgbGUI.gridlist, rows, 1, k)
    end
end

function createRGBGUI()
    exports.USGGUI:setDefaultTextAlignment("left","center")
    rgbGUI.window = exports.USGGUI:createWindow("center","center", 300, 450, false,"RGB picker")
    rgbGUI.gridlist = exports.USGGUI:createGridList("left","top",298,400,false, rgbGUI.window)
    rgbGUI.name = exports.USGGUI:gridlistAddColumn(rgbGUI.gridlist, "Name", 0.5)
    rgbGUI.r = exports.USGGUI:gridlistAddColumn(rgbGUI.gridlist, "R", 0.17)
    rgbGUI.g = exports.USGGUI:gridlistAddColumn(rgbGUI.gridlist, "G", 0.17)
    rgbGUI.b = exports.USGGUI:gridlistAddColumn(rgbGUI.gridlist, "B", 0.17)
        rgbGUI.newr = exports.USGGUI:createEditBox("left",400,95,25,false,"",rgbGUI.window)
        rgbGUI.newg = exports.USGGUI:createEditBox("center",400,95,25,false,"",rgbGUI.window)
        rgbGUI.newb = exports.USGGUI:createEditBox("right",400,95,25,false,"",rgbGUI.window)
    rgbGUI.colorpicker = exports.USGGUI:createButton("left","bottom",95,25,false,"Edit Color", rgbGUI.window)
	rgbGUI.close = exports.USGGUI:createButton("right","bottom",95,25,false,"Close", rgbGUI.window)
	rgbGUI.reset = exports.USGGUI:createButton("center","bottom",95,25,false,"Reset", rgbGUI.window)
    addEventHandler("onUSGGUISClick",rgbGUI.colorpicker,changeColor,false)
	
	addEventHandler("onUSGGUISClick",rgbGUI.close,function()
	togglergbGUI()
	end,false)
	
	addEventHandler("onUSGGUISClick",rgbGUI.reset,function()
	skinColor = table.copy(DefaultSkinColor,true)
	refreshRGB()
    newcolor()
	save()
	end,false)

end


function togglergbGUI()
if(not exports.USGaccounts:isPlayerLoggedIn()) then return end
    if(isElement(rgbGUI.window )) then
        if(exports.USGGUI:getVisible(rgbGUI.window )) then
         exports.USGGUI:setVisible(rgbGUI.window , false)
            showCursor(false)
            else
            showCursor(true)
            exports.USGGUI:setVisible(rgbGUI.window , true)
            refreshRGB()
            newcolor()
        end
    else
        createRGBGUI()
        refreshRGB()
        newcolor()
        showCursor(true)
    end 
end 
addCommandHandler("rgb",togglergbGUI)

function save()
local saveData = toJSON ( skinColor )
local filePath = "data.txt"
local file = fileCreate (filePath )
	
	fileWrite(file,saveData)
	fileFlush(file)
	fileClose(file)
	
end

addEventHandler("onClientResourceStart",resourceRoot,
function ()
local filePath = "data.txt"
local file
	if(fileExists(filePath))then
		file = fileOpen(filePath)
		local loadDataJSON = fileRead(file,fileGetSize(file))
		local loadData = fromJSON(loadDataJSON)
		skinColor = table.copy(loadData,true)
		newcolor()
		fileClose(file)
	end
end
)

function changeColor()
local selected = exports.USGGUI:gridlistGetSelectedItem(rgbGUI.gridlist)
local rnumber = exports.USGGUI:getText(rgbGUI.newr)
local gnumber = exports.USGGUI:getText(rgbGUI.newg)
local bnumber = exports.USGGUI:getText(rgbGUI.newb)
    if(selected) then
    local id = exports.USGGUI:gridlistGetItemData(rgbGUI.gridlist, selected, 1)
        if ( tonumber (rnumber)) and (tonumber (rnumber)  >= 0 ) and (tonumber (rnumber) <= 255 )then
            skinColor[id][2] = tonumber (rnumber)
        end
        if ( tonumber (gnumber)) and (tonumber (gnumber)  >= 0 ) and (tonumber (gnumber) <= 255 )then
            skinColor[id][3] = tonumber (gnumber)
        end
        if ( tonumber (bnumber))and (tonumber (bnumber)  >= 0 ) and (tonumber (bnumber) <= 255 ) then
            skinColor[id][4] = tonumber (bnumber)
        end
        refreshRGB()
        newcolor()
		save()
    end
end



function skin.drawElement(element,x,y,disabled, hovered)
    local info = GUIinfo[element]
    local customChildDraw = false
    local textColor = info.textColor or getSkinColor("text")
    if ( disabled ) then
        textColor = tocolor(75,75,75)
    end
    -- draw element
    local width, height = info.width, info.height
    if ( info.guiType == "scrollarea" ) then
        customChildDraw = true
        renderTarget = info.contentRenderTarget
        dxSetRenderTarget(renderTarget,true)
        useRenderTarget = true
        local children = getElementChildren(element)
        local maxScroll = 0
        for i=1,#children do
            local cInfo = GUIinfo[children[i]]
            if ( cInfo.y+cInfo.height+20 > maxScroll ) then
                maxScroll = cInfo.y+cInfo.height + 20
            end
            if ( cInfo and cInfo.y+cInfo.height >= info.scrollPixels and cInfo.y-info.scrollPixels <= info.height ) then -- draw
                processElementOnRender(children[i],0,-info.scrollPixels,disabled)
            end
        end
        info.maxScroll = maxScroll
        useRenderTarget = false
        dxSetRenderTarget()
        post_gui = not isConsoleActive()
        dxDrawImage(x,y,info.width,info.height,renderTarget,0,0,0,color_white,post_gui) 
    elseif info.guiType == "window" then
        local titleColor = textColor
        if ( isChildInFocus(element) and not disabled ) then
        dxDrawRectangle(x-2, y-23, info.width+4, 23, info.titleBarColor or getSkinColor("selection"), post_gui)
        local _width = _width or 1
       -- dxDrawLine(x,y,x+info.width,y,tocolor(0,0,0,250),3,post_gui)
       dxDrawLine(x-1,y,x-1,y+info.height,getSkinColor("border"),3,post_gui)
        dxDrawLine(x,y+info.height,x+info.width,y+info.height,getSkinColor("border"),3,post_gui)
        dxDrawLine(x+info.width,y,x+info.width,y+info.height,getSkinColor("border"),3,post_gui)
        else
        titleColor =  getSkinColor("title")
        dxDrawRectangle(x, y-23, info.width, 23, info.color, post_gui)
        end
        dxDrawRectangle(x, y, info.width, info.height, info.color, post_gui)
        dxDrawText(info.text,x,y-23,x+info.width,y-3,titleColor, defaultTextScale+0.2,"default-bold",'center','center',true,false, post_gui)    
                  
    elseif info.guiType == "button" then
        local color, font = info.color, "default"
        if(hovered and not disabled) then
            color = getSkinColor("hover")
            font = "default-bold"
            x, y = x - 2, y - 2
            width, height = width + 2, height + 2
        end
        if(not disabled) then
            dxDrawRectangle(x, y, width, height, color, post_gui)
        else
            dxDrawRectangle(x, y, info.width, info.height, tocolor(50,50,50,200), post_gui)
        end
        dxDrawText(info.text,x,y,x+width,y+height,textColor, defaultTextScale,font,'center','center',true,true, post_gui)               
    elseif info.guiType == "label" then
        dxDrawText(info.text,x,y,x+info.width,y+info.height,textColor, info.textScale or defaultTextScale,"default",info.textXAlignment,info.textYAlignment,true,true, post_gui)
    elseif info.guiType == "editbox" then
        local text = info.masked and string.rep("*",#info.text) or info.text
        dxDrawRectangle(x, y, info.width, info.height, info.color, post_gui)
        local textToDraw = getTextBeingDrawnIntoEdit(text,info.scroll, #text, info.width-8)
        dxDrawText(textToDraw,x+4,y,x+info.width-8,y+info.height,textColor, defaultTextScale,"default",'left','center',false,false, post_gui)
        --draw caret
        if ( not info.readOnly and elementInFocus == element and info.caretIndex >= info.scroll and info.caretIndex <= info.scroll+#textToDraw ) then
            local textWidth = getTextExtentUntilCaret(textToDraw,info.caretIndex-info.scroll)
            dxDrawLine(math.min(x+info.width-2,x+4+textWidth),y+3, math.min(x+info.width-2,x+4+textWidth), y+19, tocolor( 0,0,0,255), 1, post_gui)
        end
   
     elseif info.guiType == "memo" then
        local text = info.text
        dxDrawRectangle(x, y, info.width, info.height, info.color, post_gui)
        local avWidth = info.width-4
        if ( getElementScrollBarDimensions(element) ) then
            avWidth = avWidth - 10
        end
        local lineHeight = 15
        local startLine = math.min(#info.lines-1,math.floor((info.scrollPixels or 0)/lineHeight))
        local lines = {}
        local caretLine = 1
        local line = ""
        local lineWidth = 0
        local i = 1
        local word = ""
        for char in text:gmatch ( "." ) do      
            local lineN = #lines-startLine
            local nWidth = lineWidth + dxGetTextWidth(char)
            if ( not info.readOnly and i-1 == info.caretIndex and lineN >= 0 and lineN*lineHeight < info.height and elementInFocus == element) then
                caretLine = lineN+1
                dxDrawLine(x+lineWidth+2,y+(#lines*lineHeight),x+2+lineWidth,y+((#lines+1)*lineHeight),tocolor(0,0,0),1, post_gui)
            end
            if ( char ~= string.char(10) and nWidth < avWidth ) then
                lineWidth = nWidth
                line = line..char
                if(char ~= " ") then
                    word = word..char
                else
                    word = ""
                end
            else
                local nLine
                if ( char == string.char(10) ) then
                    lineWidth = 0
                    nLine = ""
                    word = ""
                else
                    if(char == " ") then -- no need to put space as first character
                        lineWidth = 0
                        nLine = ""
                    else
                        if(word and #word > 0) then
                            line = line:sub(1, #line-(#word))
                        end
                        lineWidth = dxGetTextWidth(char)
                        nLine = word..char
                    end
                end
                if ( #lines >= startLine and lineN*lineHeight < info.height ) then
                    dxDrawText(line,x+2,y+(lineN*lineHeight),x+avWidth,y+((lineN+1)*lineHeight),tocolor(0,0,0),1,"default","left","top", false,false,post_gui)
                end                         
                table.insert(lines,line)
                line = nLine
            end
            i = i + 1
        end
        -- manage final line
        local lineN = #lines-startLine
        if ( lineN*lineHeight < info.height ) then
            dxDrawText(line,x+2,y+(lineN*lineHeight),x+avWidth,y+((lineN+1)*lineHeight),tocolor(0,0,0),1,"default","left","top",false,false,post_gui)
        end
        if ( not info.readOnly and info.caretIndex == #text and elementInFocus == element) then
            caretLine = #lines
            if ( lineN*lineHeight < info.height ) then
                dxDrawLine(2+x+lineWidth,y+(lineN*lineHeight),x+lineWidth+2,y+((lineN+1)*lineHeight),tocolor(0,0,0),1,post_gui)
            end
        end
        table.insert(lines,line)
        info.lines = lines
    elseif info.guiType == 'gridlist' then
        local startRow = info.scrollRow
        local columns = info.columns
        dxDrawRectangle(x,y,info.width, 20, getSkinColor("gridlist_header"), post_gui) -- column bar
        dxDrawRectangle(x,y+21,info.width,info.height-21, info.color, post_gui) -- background for rows
        local rows = info.displayedRows
        local totalRowHeight = #rows*20
        info.scrollPixels = math.min(info.scrollPixels,#rows*20)
        --table.sort(rows, function (a,b) if(a and b) then return a.sortIndex < b.sortIndex else return false end end )
        dxSetRenderTarget(info.contentRenderTarget,true)
        dxSetBlendMode("modulate_add")

        local firstRow = math.max(1,math.floor(info.scrollPixels/20)-1) -- calculate row to start from
        local rowIndex = firstRow
        for i=rowIndex, info.rowCount do -- draw rows
            local row = rows[i]
            if(info.rows[row]) then
                local rowX,rowY,rowWidth,rowHeight = 0,20*(rowIndex-1)-math.floor(info.scrollPixels),info.width,20
                if(rowY+rowHeight > 0) then
                    if(rowY < info.height+20) then
                        if info.selectedRow == row and not info.selectedColumn  then
                            dxDrawRectangle(rowX+1, rowY, rowWidth-2, rowHeight, info.selectedColor or getSkinColor("gridlist_row_selected"), false) -- selected row color
                        end
                        local columnStartX = 0
                        for i=1,#columns do
                            local itemX,itemY,itemWidth,itemHeight = rowX,rowY,columns[i].width*info.width,rowHeight
                            itemX = columnStartX
                            if info.rows[row][i] then
                                if info.selectedRow == row and info.selectedColumn == i then
                                    dxDrawRectangle(itemX, itemY, itemWidth, itemHeight, info.selectedColor or getSkinColor("gridlist_row_selected"), false) -- selected row+column color
                                end
                                local rowColor = info.rows[row][i].textColor or textColor
                                if info.rows[row][i][1] then
                                    dxDrawText(info.rows[row][i][1],itemX+5, itemY, itemX+(itemWidth-5), itemY+itemHeight,rowColor, defaultTextScale*1,"default",'left','center',true,false, false) -- row text
                                end
                            end
                            columnStartX = itemX+itemWidth
                        end
                    else
                        break -- last visible row reached, no need to continue loop
                    end
                end
                rowIndex = rowIndex + 1
            end
        end
        if ( useRenderTarget ) then
            dxSetRenderTarget(renderTarget)
        else
            dxSetRenderTarget()
        end
        dxSetBlendMode("add")
        dxDrawImage(x,y+22,info.width,info.height-22,info.contentRenderTarget, 0,0,0, color_white, post_gui)
        dxSetBlendMode("blend")
        local columnStartX = x
        for column=1,#columns do -- draw headers
            local columnX, columnY, columnWidth = columnStartX, y, (columns[column].width*info.width)
            columnX = columnStartX
            dxDrawText(columns[column].text,columnX+5,columnY,columnX+columnWidth,columnY+20,textColor, defaultTextScale*1,"default-bold",'left','center',false,false, post_gui)
            if column ~= #columns then
                dxDrawLine( columnX+columnWidth,columnY+2, columnX+columnWidth, columnY+16, color_white, 0.5, post_gui )
                dxDrawLine( columnX+columnWidth, y+22, columnX+columnWidth, y+info.height, color_white, 1, post_gui)
            end
            if(column == info.sortColumn) then
                dxDrawText("^", columnX+columnWidth-15, columnY+3, columnX+columnWidth, y+20,color_white,
                    defaultTextScale,"default","center","center",false,false,post_gui,false,false,info.sortAscending and 180 or 0)
            end
            columnStartX = columnX+columnWidth
        end
        dxDrawLine(x,y+20,x+info.width,y+20,tocolor(8,8,8), 1, post_gui)    
        dxDrawBorderAroundRectangle(x,y,info.width,info.height,1,tocolor(8,8,8))
    elseif info.guiType == "image" then
        local result = dxDrawImage(x,y,info.width,info.height,info.img,0,0,0,info.color,post_gui)
        if(not result) then
            outputDebugString("Error drawing image "..tostring(info.img), 1)
        end
    elseif info.guiType == "treeview" then
        --[[local nodes = info.nodes
        dxDrawRectangle(x,y,info.width,info.height, info.color, post_gui) -- background for nodes
        table.sort(nodes, function (a,b) return GUIinfo[a].sortIndex < GUIinfo[b].sortIndex end )
        dxSetRenderTarget(info.contentRenderTarget,true)
        local nodesDrawn = 0
        local nodeStartX,nodeStartY = x,y
        local drawNode = 
            function (nodeID,node,levels)
                local nodeX,nodeY = nodeStartX+(levels*20),nodeStartY+(nodesDrawn*30)
                nodesDrawn = nodesDrawn+1
                local nodeWith, nodeHeight = info.width-nodeX, 30
                local children = getElementChildren(node)
                GUIinfo[node].x, GUIinfo[node].y = nodeX, nodeY
                for i=1,#children do
                    drawElementOnRender(children[i])
                end
            end
        for node=1,#nodes do -- draw nodes          
            drawNode(node,nodes[node], 0)
        end
        dxSetRenderTarget()
        if not drawedgrid then
            dxDrawImage(x,y,info.width,info.height,info.contentRenderTarget)
        end
        --]]
    elseif info.guiType == "checkbox" then      
        local checkboxX, checkboxY, checkboxWidth,checkboxHeight = x,y+(info.height-15)/2, 15,15            
        dxDrawRectangle(checkboxX, checkboxY, checkboxWidth,checkboxHeight,info.color, post_gui)
        dxDrawText(info.text,x+20,y,x+info.width-15,y+info.height,textColor, defaultTextScale,"default",'left','center',false,false, post_gui)
        if info.isChecked then              
            dxDrawLine(checkboxX+1,checkboxY+1,checkboxX+checkboxWidth-2, checkboxY+checkboxHeight-2, color_white,0.8,post_gui)
            dxDrawLine(checkboxX+1,checkboxY+checkboxHeight-2,checkboxX+checkboxWidth-2, checkboxY+1, color_white,0.8,post_gui)             
        end
    elseif info.guiType == "radiobutton" then
        local radius = 5
        local x0, y0 = x, math.floor(y+(info.height-math.floor(radius*0.5))/2)
        local textHeight = info.height-(y0-y)-radius
        dxDrawText(info.text,x+radius+5,y0-math.floor(radius*1.5),x+info.width-radius-5,y0-radius+textHeight,textColor, defaultTextScale,"default",'left','top',false,false, post_gui)
        local borderColor = tocolor(100,100,100)    
        dxDrawCircle(x0,y0,radius,borderColor)
        --[[
        local cx, cy = radius, 0;
        local radiusError = 1-x;

        
        while(cx >= cy) do
            dxDrawRectangle(cx + x0, cy + y0, 1,1,borderColor,post_gui);
            dxDrawRectangle(cy + x0, cx + y0, 1,1,borderColor,post_gui);
            dxDrawRectangle(-cx + x0, cy + y0, 1,1,borderColor,post_gui);
            dxDrawRectangle(-cy + x0, cx + y0, 1,1,borderColor,post_gui);
            dxDrawRectangle(-cx + x0, -cy + y0, 1,1,borderColor,post_gui);
            dxDrawRectangle(-cy + x0, -cx + y0, 1,1,borderColor,post_gui);
            dxDrawRectangle(cx + x0, -cy + y0, 1,1,borderColor,post_gui);
            dxDrawRectangle(cy + x0, -cx + y0, 1,1,borderColor,post_gui);
            cy = cy + 1;
            if (radiusError<0) then
                radiusError = radiusError + ( 2 * cy + 1);
            else
                cx = cx - 1;
                radiusError = radiusError + ( 2* (cy - cx + 1));
            end
        end
        ]]
        if(info.selected) then
            local selectionColor = color_white
            dxDrawCircle(x0,y0,radius,selectionColor)
            --[[
            local radius = 5
            local cx, cy = radius, 0;
            while(cx >= cy) do
                dxDrawLine(cx+x0,cy+y0,-cx+x0,cy+y0,selectionColor, 1,post_gui)
                dxDrawLine(cy+x0,cx+y0,-cy+x0,cx+y0,selectionColor,1,post_gui)
                dxDrawLine(-cx+x0,-cy+y0,cx+x0,-cy+y0,selectionColor,1,post_gui)
                dxDrawLine(-cy+x0,-cx+y0,cy+x0,-cx+y0,selectionColor,1,post_gui)
                dxDrawLine(cy+x0,cx+y0,-cy+x0,cx+y0,selectionColor,1,post_gui)
                cy = cy + 1;
                if (radiusError<0) then
                    radiusError = radiusError + ( 2 * cy + 1);
                else
                    cx = cx - 1;
                    radiusError = radiusError + ( 2* (cy - cx + 1));
                end
            end
            ]]
        end
    elseif info.guiType == "slider" then        
        dxDrawLine( x, y+(info.height/2), x+info.width, y+(info.height/2), info.color, 1 ) -- draw line
        local spaceBetweenOptions = (info.width-info.optionSize)/(#info.options-1)
        local posOption1, posOption2 = 0, info.width
        local selOpColor = color_white
        if ( disabled ) then selOpColor = tocolor(50,50,50) end
        for i=1,#info.options do
            local opX,opY = sliderGetOptionPosition(element,i)
            dxDrawText(tostring(info.options[i]),x+opX+2, y+opY-22,x+opX+14, y+opY-10,textColor, defaultTextScale,"default",'center','center',false,false, post_gui)
            dxDrawRectangle(x+opX,y+opY-(info.optionSize/2), info.optionSize, info.optionSize,setColorAlpha(info.color,250), post_gui ) -- draw option rectangle
            dxDrawBorderAroundRectangle(x+opX,y+opY-(info.optionSize/2),info.optionSize,info.optionSize, 1, tocolor(18,18,18))
            if ( info.selectionPos and info.selectionPos >= opX ) then
                posOption1 = opX
            elseif ( info.selectionPos and info.selectionPos < opX ) then
                posOption2 = opX+(info.optionSize/2)
            end
        end
        if info.selectionPos then
            local interpolatedNumber = info.interpolatedNumber
            local opX,opY = sliderGetOptionPosition(element,info.selectionPos)
            dxDrawRectangle(x+info.selectionPos,y+opY-(info.selOptionSize/2), info.selOptionSize, info.selOptionSize, selOpColor, post_gui )
            dxDrawText(tostring(info.interpolatedNumber), x+posOption1, y+opY-(info.selOptionSize/2)-20,x+posOption2, y+opY-(info.selOptionSize/2),textColor, defaultTextScale,"default",'center','center',false,false, post_gui)               
        elseif info.selection then
            local opX,opY = sliderGetOptionPosition(element,info.selection)
            dxDrawRectangle(x+opX+3,y+opY-(info.selOptionSize/2), info.selOptionSize, info.selOptionSize, selOpColor, post_gui )
        end
    elseif info.guiType == "combobox" then
        dxDrawRectangle(x,y,info.width,info.height,info.color, post_gui)
        if info.currentOption then
            dxDrawText(info.options[info.currentOption],x,y,x+info.width,y+info.height,textColor, defaultTextScale,"default",'center','center',false,false, post_gui)
        else
            dxDrawText(info.text, x,y,x+info.width,y+info.height, textColor, defaultTextScale,"default","center", "center",false,false,post_gui)
        end
        dxDrawBorderAroundRectangle(x,y,info.width,info.height, 0.5, color_white)
        if not info.collapsed then
            local optionSizeX,optionSizeY = info.width,info.height
            for ID=1,#info.options do           
                if ID ~= info.currentOption then            
                    local optionText = info.options[ID]
                    if info.currentOption and ID > info.currentOption then ID = ID - 1 end  
                    local optionX,optionY = x,y+(ID*info.height)
                    if info.direction == "up" then
                        optionX,optionY = x,y-(ID*optionSizeY)
                    end
                    dxDrawRectangle(optionX,optionY,optionSizeX,optionSizeY,info.color, post_gui)
                    dxDrawText(optionText,optionX,optionY,optionX+optionSizeX,optionY+optionSizeY,textColor, defaultTextScale,"default",'center','center',false,false, post_gui)
                    if ID ~= 1 then
                        if info.direction == 'down' then dxDrawLine(optionX+3,optionY,optionX+optionSizeX-6,optionY,color_white, 1, post_gui)
                        else dxDrawLine(optionX+3,optionY+optionSizeY,optionX+optionSizeX-6,optionY+optionSizeY,color_white, 1, post_gui) end
                    end 
                end             
            end         
        end
    elseif info.guiType == "tabpanel" then
        -- draw tab headers
        local tabs = getTabPanelHeaders(element,x)

        for tab=1,#tabs do
            local tabData = tabs[tab]
            local tabInfo = tabs[tab].info
            local text = tabInfo.text
            local headerWidth = tabData.headerWidth
            local tabX = tabData.tabX
            if ( tabInfo.disabled or disabled ) then -- panel or tab disabled
                dxDrawRectangle(tabX,y,headerWidth,info.tabHeaderHeight,tocolor(50,50,50,200),post_gui)
                dxDrawText(text,tabX,y,tabX+headerWidth,y+info.tabHeaderHeight,tocolor(100,100,100),info.tabHeaderTextScale, "default", "center", "center", true,false, post_gui)                       
            elseif ( info.selectedTab ~= tabData.element ) then -- unselected
                dxDrawRectangle(tabX,y,headerWidth,info.tabHeaderHeight,getSkinColor("tabpanel_header"),post_gui)
                dxDrawText(text,tabX,y,tabX+headerWidth,y+info.tabHeaderHeight,color_white,info.tabHeaderTextScale, "default", "center", "center", true,false, post_gui)
            else -- selected
                dxDrawRectangle(tabX,y,headerWidth,info.tabHeaderHeight,getSkinColor("selection"),post_gui)
                dxDrawText(text,tabX,y,tabX+headerWidth,y+info.tabHeaderHeight,color_white,info.tabHeaderTextScale, "default-bold", "center", "center", true,false, post_gui)
            end
        end
        -- draw background
        dxDrawRectangle(x,y+info.tabHeaderHeight,info.width, info.height-info.tabHeaderHeight,info.color, post_gui)
    end
    -- draw scrollbars
    local location,height = getElementScrollBarDimensions(element)
    if ( location and height ) then
        if ( info.guiType == "gridlist" ) then 
            dxDrawRectangle(x+info.width-12,y+22,12,info.height-22,info.scrollBarProperties.bgcolor or tocolor(0,0,0,200), post_gui)
        else
            dxDrawRectangle(x+info.width-12,y,12,info.height,info.scrollBarProperties.bgcolor or tocolor(0,0,0,200), post_gui)
        end
        dxDrawRectangle(x+info.width-9,y+location,6,height,info.scrollBarProperties.thumbcolor or color_white,post_gui)
    end
    return customChildDraw
end





registerSkin(skin)
