loadstring(exports.Mysql:getQueryTool())()

local jobExpTable = {}

------------------------------------------------------------
--Job ranks table
--Job name needs to be the jobID
------------------------------------------------------------
local jobRanks = { 
	["pilot"] = {
		--syntax:
		--[exp needed] = {rankName = the rank name},
		[0] = {rankName = "Junior Flight Officer"},
		[1000] = {rankName = "Flight Officer"},
		[2500] = {rankName = "First Officer"},
		[5000] = {rankName = "Captain"},
		[7500] = {rankName = "Senior Captain"},
		[10000] = {rankName = "Commercial First Officer"},
		[12500] = {rankName = "Commercial Captain"},
		[15000] = {rankName = "Commercial Senior Captain"},
		[17500] = {rankName = "Commercial Commander"},
		[20000] = {rankName = "Commercial Senior Commander"},
		[25000] = {rankName = "ATP First Officer"},
		[30000] = {rankName = "ATP Captain"},
		[50000] = {rankName = "ATP Senior Captain"},
		[75000] = {rankName = "ATP Commander"},
		[100000] = {rankName = "ATP Senior Commander"},
	},

	["trucker"] = {
		[0] = {rankName = "Trainee Trucker"},
		[1000] = {rankName = "Local Trucker"},
		[2500] = {rankName = "FedEx Trucker"},
		[5000] = {rankName = "UPS Trucker"},
		[7500] = {rankName = "Regular Trucker"},
		[10000] = {rankName = "Experienced Trucker"},
		[15000] = {rankName = "Respected Trucker"},
		[25000] = {rankName = "State Trucker"},
		[50000] = {rankName = "SA Transportation Trucker"},
		[75000] = {rankName = "King of the Road"},
		[100000] = {rankName = "Trucking Tycoon"},
	},

	["medic"] = {
		[0] = {rankName = "Medical Student"},
		[1000] = {rankName = "Cleveland Clinic Doctor"},
		[2500] = {rankName = "General Practitioner"},
		[5000] = {rankName = "Foundation Medic"},
		[7500] = {rankName = "Assistant Doctor"},
		[10000] = {rankName = "Consultant"},
		[25000] = {rankName = "Middle-grade Doctor"},
		[50000] = {rankName = "Specialist"},
		[75000] = {rankName = "Surgeon"},
		[100000] = {rankName = "Elite Doctor"},
	},

	["quarryMiner"] = {
		[0] = {rankName = "Trainee Quarry Miner"},
		[1000] = {rankName = "Field Operator I"},
		[2500] = {rankName = "Field Operator II"},
		[5000] = {rankName = "Field Operator III"},
		[7500] = {rankName = "Field Operator IV"},
		[10000] = {rankName = "Mine Engineer I"},
		[15000] = {rankName = "Mine Engineer II"},
		[20000] = {rankName = "Mine Engineer III"},
		[25000] = {rankName = "Mine Engineer IV"},
		[50000] = {rankName = "Geologist I"},
		[75000] = {rankName = "Geologist II"},
		[100000] = {rankName = "King of the Quarry"},
	},
} 

----------------------------------------------------------------------------------------------
--Job bonuses table which stores the given bonus amount for a rank when a player ranks up
--Job name needs to be the jobID
----------------------------------------------------------------------------------------------
local jobRankReward = {
	--[Job name] = {Ranks go in here, follow syntax below}
	["pilot"] = {
		--[rank name] = bonus given when player ranks up,
		["Junior Flight Officer"] = 0,
		["Flight Officer"] = 1000,
		["First Officer"] = 1500,
		["Captain"] = 2000,
		["Senior Captain"] = 2500,
		["Commercial First Officer"] = 3000,
		["Commercial Captain"] = 3500,
		["Commercial Senior Captain"] = 4000,
		["Commercial Commander"] = 4500,
		["Commercial Senior Commander"] = 5000,
		["ATP First Officer"] = 10000,
		["ATP Captain"] = 15000,
		["ATP Senior Captain"] = 25000,
		["ATP Commander"] = 50000,
		["ATP Senior Commander"] = 100000,
	},

	["quarryMiner"] = {
		["Trainee Quarry Miner"] = 0,
		["Field Operator I"] = 1000,
		["Field Operator II"] = 1500,
		["Field Operator III"] = 2000,
		["Field Operator IV"] = 2500,
		["Mine Engineer I"] = 5000,
		["Mine Engineer II"] = 6500,
		["Mine Engineer III"] = 9000,
		["Mine Engineer IV"] = 12500,
		["Geologist I"] = 25000,
		["Geologist II"] = 50000,
		["King of the Quarry"] = 100000,
	},

	["trucker"] = {
		["Trainee Trucker"] = 0,
		["Local Trucker"] = 1000,
		["FedEx Trucker"] = 1500,
		["UPS Trucker"] = 2000,
		["Regular Trucker"] = 2500,
		["Experienced Trucker"] = 5000,
		["Respected Trucker"] = 7500,
		["State Trucker"] = 10000,
		["SA Transportation Trucker"] = 25000,
		["King of the Road"] = 50000,
		["Trucking Tycoon"] = 100000,
	},

	["medic"] = {
		["Medical Student"] = 0,
		["Cleveland Clinic Doctor"] = 1000,
		["General Practitioner"] = 2000,
		["Foundation Medic"] = 3500,
		["Assistant Doctor"] = 5000,
		["Consultant"] = 7500,
		["Middle-grade Doctor"] = 10000,
		["Specialist"] = 25000,
		["Surgeon"] = 50000,
		["Elite Doctor"] = 100000,
	},
}

local jobBonus = {
	["pilot"] = {
		["Junior Flight Officer"] = 0,
		["Flight Officer"] = 50,
		["First Officer"] = 100,
		["Captain"] = 150,
		["Senior Captain"] = 200,
		["Commercial First Officer"] = 250,
		["Commercial Captain"] = 300,
		["Commercial Senior Captain"] = 350,
		["Commercial Commander"] = 400,
		["Commercial Senior Commander"] = 450,
		["ATP First Officer"] = 600,
		["ATP Senior Captain"] = 750,
		["ATP Commander"] = 1000,
		["ATP Senior Commander"] = 1500,
	},

	["quarryMiner"] = {
		["Trainee Quarry Miner"] = 0,
		["Field Operator I"] = 50,
		["Field Operator II"] = 100,
		["Field Operator III"] = 150,
		["Field Operator IV"] = 200,
		["Mine Engineer I"] = 450,
		["Mine Engineer II"] = 600,
		["Mine Engineer III"] = 750,
		["Mine Engineer IV"] = 900,
		["Geologist I"] = 1250,
		["Geologist II"] = 1500,
		["King of the Quarry"] = 2000,
	},

	["trucker"] = {
		["Trainee Trucker"] = 0,
		["Local Trucker"] = 100,
		["FedEx Trucker"] = 150,
		["UPS Trucker"] = 200,
		["Regular Trucker"] = 250,
		["Experienced Trucker"] = 500,
		["Respected Trucker"] = 750,
		["State Trucker"] = 1000,
		["SA Transportation Trucker"] = 1500,
		["King of the Road"] = 1750,
		["Trucking Tycoon"] = 2000,
	},

	["medic"] = {
		["Medical Student"] = 0,
		["Cleveland Clinic Doctor"] = 100,
		["General Practitioner"] = 125,
		["Foundation Medic"] = 150,
		["Assistant Doctor"] = 175,
		["Consultant"] = 200,
		["Middle-grade Doctor"] = 300,
		["Specialist"] = 450,
		["Surgeon"] = 600,
		["Elite Doctor"] = 900,
	},
}

------------------------------------------------------------
--Occupation to ID and ID to Occupation
------------------------------------------------------------
local dataNameFromJobName = {
	["Criminal"] = "criminal",
	["Paramedic"] = "medic",
	["Pilot"] = "pilot",
	["Police Officer"] = "policeOfficer",
	["Quarry Miner"] = "quarryMiner",
	["Trucker"] = "trucker",
	["Mechanic"] = "Mechanic",
}

local jobNameFromDataName = {
	["criminal"] = "Criminal",
	["medic"] = "Paramedic",
	["pilot"] = "Pilot",
	["policeOfficer"] = "Police Officer",
	["quarryMiner"] = "Quarry Miner",
	["trucker"] = "Trucker",
	["Mechanic"] = "Mechanic",
}

------------------------------------------------------------
--All the job IDs
------------------------------------------------------------
local jobIDs = {
	["pilot"] = true,
	["police"] = true,
	["trucker"] = true,
	["medic"] = true,
	["Mechanic"] = true,
	["criminal"] = true,
	["quarryMiner"] = true,
}

-----------------------------------------------------------------
--Create MySQL table if it hasn't been created on resource start
-----------------------------------------------------------------
function loadDataOnStartup()
	exports.MySQL:execute("CREATE TABLE IF NOT EXISTS cnr_jobExp (username TEXT, jobExp TEXT)")

	for k,player in pairs(getElementsByType("player")) do
		if (exports.USGrooms:getPlayerRoom(player) == "cnr") then
			loadPlayerJobExp(player)
		end
	end
end
addEventHandler("onResourceStart", resourceRoot, loadDataOnStartup)

function saveDataOnResourceStop()
	for k,player in pairs(getElementsByType("player")) do
		if (exports.USGrooms:getPlayerRoom(player) == "cnr") then
			savePlayerJobExp(player)
		end
	end
end
addEventHandler("onResourceStop", resourceRoot, saveDataOnResourceStop)

------------------------------------------------------------
--Gets the players current job rank (the rank name, not exp)
------------------------------------------------------------
function getPlayerJobRank(player, jobName)
	if (player and isElement(player) and getElementType(player) == "player" and jobName) then
		if (jobRanks[jobName]) then
			local jobExp = getPlayerJobExp(player, jobName)
			local rank = false

			for k,v in pairs(jobRanks[jobName]) do
				if (not rank) then
					rank = v.rankName
				elseif (jobExp >= k) then
					rank = v.rankName
				else
					break
				end
			end
			return rank
		else
			return false
		end
	else
		outputDebugString("Error on getting player job rank. (No player and/or job name given)", 1)
	end
end

------------------------------------------------------------
--Gets the job bonus value from a given job and the rank
------------------------------------------------------------
function getRankBonus(player, jobName, newRank)
	if (player and isElement(player) and jobName and newRank) then
		if (jobRankReward[jobName]) then
			for k,v in pairs(jobRankReward[jobName]) do
				if (k == newRank) then
					return v
				end
			end
		end
	end
end

function getPlayerJobBonus(player, jobName, currrentRank)
	if (player and isElement(player) and jobName and currrentRank) then
		if (jobBonus[jobName]) then
			--for k,v in pairs(jobExtraReward[jobName]) do
			if (jobBonus[jobName][currentRank]) then
				--if (k == currentRank) then
					outputChatBox(jobBonus[jobName][currentRank], player)
					return jobBonus[jobName][currentRank]
				--end
			end
		end
	end
end

------------------------------------------------------------
--Gets the players job Exp for the given job name/id
------------------------------------------------------------
--[[function getPlayerJobExp(player, id)
	if (player and isElement(player) and id) then
		if (jobExpTable[player]) then
			for k,v in pairs(jobExpTable[player]) do
				if (v.jobName == id) then
					return tonumber(v.exp)
				else
					table.insert(jobExpTable[player], {jobName = id, exp = 0})
					return 0
				end
			end
		else
			outputDebugString("No job exp table for player: " .. getPlayerName(player), 1)
		end
	end
end]]

function getPlayerJobExp(player, id)
	if (player and isElement(player) and id) then
		if (jobRanks[id]) then
			local checkExp = checkPlayerJobExp(player, id)

			if (checkExp) then
				return tonumber(checkExp)
			else
				table.insert(jobExpTable[player], {jobName = id, exp = 0})
				checkExp = checkPlayerJobExp(player, id)
				return checkExp
			end
		end
	end
end

function checkPlayerJobExp(player, id)
	if (player and isElement(player) and id) then
		if (jobExpTable[player]) then
			for k,v in pairs(jobExpTable[player]) do
				if (v.jobName == id) then
					return tonumber(v.exp)
				end
			end
		else
			outputDebugString("No job exp table for player: " .. getPlayerName(player), 1)
		end
	end
end
------------------------------------------------------------ 
--Handles giving player job experience for a given job.
------------------------------------------------------------
function givePlayerJobExp(player, jobName, expToGive)
	if (player and isElement(player) and jobName and expToGive) then
		if (jobExpTable[player]) then
			local currentJobExp = getPlayerJobExp(player, jobName)
			local currentJobRank = getPlayerJobRank(player, jobName)
			local newJobExp = currentJobExp + expToGive

			for k,v in pairs(jobExpTable[player]) do
				if (jobName == v.jobName) then
					v.exp = newJobExp
					break
				end
			end

			local checkNewJobRank = getPlayerJobRank(player, jobName)

			if (checkNewJobRank ~= currentJobRank) then
				local jobBonus = getRankBonus(player, jobName, checkNewJobRank)

				if (jobBonus) then
					exports.USGmsg:msg(player, "You have been promoted to " .. checkNewJobRank .. "! You have received a bonus of $" .. exports.USGmisc:convertNumber(jobBonus), 255, 255, 0)
					givePlayerMoney(player, jobBonus)
				end
			end
		else
			outputDebugString("No job exp table for player: " .. getPlayerName(player), 1)
		end
	end
end

------------------------------------------------------------ 
--Handles setting player job experience for a given job.
------------------------------------------------------------
function setPlayerJobExp(player, jobName, expToSet)
	if (player and isElement(player) and jobName and expToSet) then
		if (jobExpTable[player]) then
			local currentJobExp = getPlayerJobExp(player, jobName)
			local currentJobRank = getPlayerJobRank(player, jobName)

			for k,v in pairs(jobExpTable[player]) do
				if (jobName == v.jobName) then
					v.exp = expToSet
					break
				end
			end
		else
			outputDebugString("No job exp table for player: " .. getPlayerName(player), 1)
		end
	end
end

------------------------------------------------------------
--Check if player has job Exp data for all jobs on Login
------------------------------------------------------------
function giveOnPlayerJoinRoom(room)
	if (room == "cnr") then
		loadPlayerJobExp(source)
	end
end
addEvent("onPlayerJoinRoom", true)
addEventHandler("onPlayerJoinRoom", root, giveOnPlayerJoinRoom)

function loadPlayerJobExp(player)
	singleQuery(loadPlayerJobExpCallback, {player}, "SELECT * FROM cnr_jobExp WHERE username=?", exports.USGaccounts:getPlayerAccount(player))
end

function loadPlayerJobExpCallback(result, player)
	if (isElement(player) and exports.USGrooms:getPlayerRoom(player) == "cnr") then -- still in cnr room
		jobExpTable[player] = {}

		if (not result) then

			for id,v in pairs(jobIDs) do
				table.insert(jobExpTable[player], {jobName = id, exp = 0})
			end

			local jsonData = toJSON(jobExpTable[player])
			exports.MySQL:execute("INSERT INTO cnr_jobExp (username, jobExp) VALUES(?, ?)", exports.USGaccounts:getPlayerAccount(player), jsonData)
		else
			local valueTable = fromJSON(result.jobExp)

			for k, idValue in pairs(valueTable) do
				if (jobIDs[idValue.jobName]) then
					table.insert(jobExpTable[player], {jobName = idValue.jobName, exp = idValue.exp})
				end
			end
		end
	end
end

------------------------------------------------------------
--Save data when player quits server or leaves room
------------------------------------------------------------
function saveOnPlayerExitRoom(room)
	if (room == "cnr") then
		savePlayerJobExp(source)
	end
end
addEvent("onPlayerExitRoom")
addEventHandler("onPlayerExitRoom", root, saveOnPlayerExitRoom)

function saveOnPlayerQuit()
	if (exports.USGrooms:getPlayerRoom(source) == "cnr") then
		savePlayerJobExp(source)
	end
end
addEventHandler("onPlayerQuit", root, saveOnPlayerQuit)

function savePlayerJobExp(player)
	if (jobExpTable[player]) then
		local jsonData = toJSON(jobExpTable[player])
		exports.MySQL:execute("UPDATE cnr_jobExp SET jobExp=? WHERE username=?", jsonData, exports.USGaccounts:getPlayerAccount(player))
		jobExpTable[source] = nil
	end
end

------------------------------------------------------------------------------------------------------------------------
-- Client Events and stuff
------------------------------------------------------------------------------------------------------------------------

function retrieveClientStats()
	if (client and isElement(client)) then
		local currentJob = exports.USGcnr_jobs:getPlayerJob(client)

		--if (dataNameFromJobName[currentJob]) then
			local currentPlrExp = getPlayerJobExp(client, currentJob)
			local currentPlrRankName = getPlayerJobRank(client, currentJob)

			if (currentPlrExp and currentPlrRankName) then
				triggerClientEvent(client, "sendDataToClient", client, currentJob, currentPlrExp, jobRanks[currentJob], currentPlrRankName)

				if (jobRanks[currentJob]) then
					triggerClientEvent(client, "populateRankGridList", client, currentJob, jobRankReward[currentJob], jobBonus[currentJob])
				end
			else
				exports.USGmsg:msg(client, "Progress can't be viewed under this job!", 255, 0, 0)
			end
		--end
	end
end
addEvent("getJobStats", true)
addEventHandler("getJobStats", root, retrieveClientStats)

------------------------------------------------------------------------------------------------------------------------
--Development functions
addCommandHandler("checkjobexp", 
	function(player, cmd, jobName)
		if (jobName) then
			local exp = getPlayerJobExp(player, jobName)
			outputChatBox(jobName .. ", " .. exp, player)
		end
	end
)