--all Buildings
local ref_low
--medium (construction)
local ref_medium

--header
function widget:GetInfo()
   return {
      name         = "Selection Priority",
      desc         = "Sorts Units by Priority (atackunit>builder/commander>buildings)",
      author       = "Sheppy",
      date         = "2015",
      license      = "GPL",
      layer        = 0,
      enabled      = true
   }
end

function widget:CommandNotify(cmdID, cmdParams, cmdOptions)
	local selected = Spring.GetSelectedUnits()
	local low = {}
	local medium = {}
	local high = {}
	local deselect = 0
	local a = Spring.GetModKeyState() --alt ctrl ? shift , discard all but alt
	--do nothing if CTRL is pressed
	Spring.Echo(Spring.GetModKeyState())
	if a then return end
	--iterate Selection
	for i=1,200 do
		if selected[i] == nil then break end
		--get name to match
		defID = UnitDefs[Spring.GetUnitDefID(selected[i])].name
		--Check what we got in out selection		
		if inTable(ref_low,defID) then
			table.insert(low,selected[i])
		elseif inTable(ref_medium,defID) then
			table.insert(medium,selected[i])
			if deselect == 0 then deselect = 1 end
		else 
			table.insert(high,selected[i])
			if deselect < 2 then deselect = 2 end
		end
	end
	--discard selections	
	if deselect == 1 then
		Spring.SelectUnitArray(medium,false)
		Spring.SelectUnitArray(high,true)
	elseif deselect == 2 then
		Spring.SelectUnitArray(high,false)
	end
end

function inTable(tbl,item)
	for key, value in pairs(tbl) do
		if value == item then return true end
	end
	return false
end

--for debugging purpose only
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

--loading unit-names to match against
function widget:Initialize()
	ref_medium = {
		--arm
		"armcom",
		"armaca",
		"armca",
		"armacv",
		"armcv",
		"armack",
		"armck",
		"armcs",
		"armacs",
		"armacsub",
		"armch",
		"corch",
		--core
		"coracs",
		"corcom",
		"coraca",
		"coracv",
		"corack",
		"corca",
		"corck",
		"corcv",
		"corcs",
		"coracsub"
	}
	ref_low = {
		--arm
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
		"asubpen",
		--core
		"coraap",
		"coralab",
		"corap",
		"coradvsol",
		"coravp",
		"corarad",
		"coralab",
		"corbrtha",
		"corckfus",
		"corclaw",
		"corestor",
		"corfmkr",
		"corfus",
		"corlab",
		"corjam",
		"cormakr",
		"cormex",
		"cormoho",
		"cornanotc",
		"corrad",
		"corsolar",
		"cortide",
		"corvp",
		"corwin",
		"aafus",
		"amgeo",
		"coruwfus",
		"coreyes",
		"corason",
		"corasy",
		"corch",
		"corhp",
		"cormmkr",
		"corsy",
		"corgeo",
		"coruwadves",
		"corshltx",
		"coruwmex",
		"coruwmme",
		"coruwmmm",
		"cmgeo",
		"asubpen",
		"armhp",
		"armllt",
		"armhlt",
		"armjamt",
		"corhp",
		"corllt",
		"corhlt",
		"corjamt"
	}
	Spring.Echo("Namelist init done.")
end
