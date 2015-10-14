--all Buildings
local ref_low
--medium (construction)
local ref_medium
local trigger = true
function widget:GetInfo()
   return {
      name         = "Selecteion Priority",
      desc         = "TEST",
      author       = "Sheppy",
      date         = "2015",
      license      = "PD", -- should be compatible with Spring
      layer        = 0,
      enabled      = true
   }
end

function widget:CommandNotify(cmdID, cmdParams, cmdOptions)
if trigger then
ref_medium = {
"armcom",
"armaca",
"armacv",
"armack",
"armca",
"armck",
"armcv",
"armcs",
"armacsub"
}
ref_low = {
"armaap",
"armalab",
"armap",
"armadvsol",
"armavp",
"armarad",
"armalab",
"armbrtha",
"armckfus",
"armclaw",
"armestor",
"armfmkr",
"armfus",
"armlab",
"armjam",
"armmakr",
"armmex",
"armmoho",
"armnanotc",
"armrad",
"armsolar",
"armtide",
"armvp",
"armwin",
"aafus",
"amgeo",
"armuwfus",
"armeyes",
"armason",
"armasy",
"armch",
"armhp",
"armmmkr",
"armsy",
"armgeo",
"armuwadves",
"armshltx",
"armuwmex",
"armuwmme",
"armuwmmm",
"cmgeo",
"asubpen"
}
Spring.Echo("Done.")
trigger = false
end
	local selected = Spring.GetSelectedUnits()
	local low = {}
	local medium = {}
	local high = {}
	local deselect = 0
	--if teamID ~= Spring.GetMyTeamID() then return end
	for i=1,200 do
		if selected[i] == nil then break end
		--get name to match
		defID = UnitDefs[Spring.GetUnitDefID(selected[i])].name
		--Spring.Echo(selected[i])
		--Check what we got in out selection		
		if inTable(ref_low,defID) then
			table.insert(low,selected[i])
			--Spring.Echo("reflow")
		elseif inTable(ref_medium,defID) then
			--Spring.Echo("refmed")
			table.insert(medium,selected[i])
			if deselect == 0 then deselect = 1 end
		else 
			--Spring.Echo("refhigh")
			table.insert(high,selected[i])
			if deselect < 2 then deselect = 2 end
		end
	end
	--debug()
	--discard selections
	if deselect == 1 then
		Spring.SelectUnitArray(medium,false)
		Spring.SelectUnitArray(high,true)
	elseif deselect == 2 then
		Spring.SelectUnitArray(high,false)
	end
	--Spring.Echo("Dis was: " .. deselect)
end

function inTable(tbl,item)
	for key, value in pairs(tbl) do
		--Spring.Echo(key .. "val: " .. value)
		if value == item then return true end
	end
	return false
end

function debug()
	for key, value in pairs(medium) do
		Spring.Echo("val_med: " .. value)
	end
	for key, value in pairs(low) do
		Spring.Echo("val_low: " .. value)
	end
	for key, value in pairs(low) do
		Spring.Echo("val_high: " .. value)
	end 
end
