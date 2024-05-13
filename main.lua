if not EID or EIDKR then
	print("Inventory Descriptions reqires External Item Description")
	print("Check mod desctiption for more info")
	return
end

-- 와카바 모드 적용 시 충돌 방지를 위해 로드 배제
if _wakaba then return end

wakaba = wakaba or {}

--local render = include("RenderLib")
wakaba._InventoryDesc = RegisterMod("Inventory Descriptions", 1)
wakaba._InventoryDesc.defaultItems = {
	[PlayerType.PLAYER_LAZARUS] = {CollectibleType.COLLECTIBLE_LAZARUS_RAGS},
	[PlayerType.PLAYER_LAZARUS2] = {CollectibleType.COLLECTIBLE_ANEMIC},
	--[PlayerType.PLAYER_THELOST] = {CollectibleType.COLLECTIBLE_HOLY_MANTLE},
	[PlayerType.PLAYER_LILITH] = {CollectibleType.COLLECTIBLE_INCUBUS},
	[PlayerType.PLAYER_SAMSON_B] = {CollectibleType.COLLECTIBLE_BERSERK},
	[PlayerType.PLAYER_AZAZEL_B] = {CollectibleType.COLLECTIBLE_HEMOPTYSIS},
	[PlayerType.PLAYER_LILITH_B] = {CollectibleType.COLLECTIBLE_GELLO},
}
wakaba._InventoryDesc.collectibleBlacklist = {
}

local function has_value (tab, val)
  for index, value in ipairs(tab) do
    if value == val then
      return true
    end
  end
  return false
end

if not wakaba.LinkCollectibleForCharacter then
	function wakaba:LinkCollectibleForCharacter(playerType, collectibleType)
		if not playerType or not collectibleType then return end
		if not wakaba._InventoryDesc.defaultItems[playerType] then
			wakaba._InventoryDesc.defaultItems[playerType] = {}
		end
		if not has_value(wakaba._InventoryDesc.defaultItems[playerType], collectibleType) then
			table.insert(	wakaba._InventoryDesc.defaultItems[playerType], collectibleType)
		end
	end
end

local idesc = wakaba._InventoryDesc
INVDESC = {}
idesc.version = "v0.1 2022.02.14"
idesc.intversion = 1000
idesc.BackgroundSprite = Sprite()
idesc.BackgroundSprite:Load("gfx/ui/wakaba_idesc_menu.anm2", true)
idesc.BackgroundSprite:SetFrame("Idle",0)

idesc.IconBgSprite = Sprite()
idesc.IconBgSprite:Load("gfx/ui/wakaba_idesc_menu.anm2", true)
idesc.IconBgSprite:SetFrame("ItemIcon",0)

idesc.descriptions = {}
idesc.descriptions["en_us"] = {}
idesc.descriptions["en_us"].curses = {
	[-1] = {
		icon = "Blank",
		name = "<Curse not found(or modded curse)>",
	},
	[LevelCurse.CURSE_OF_DARKNESS] = {
		icon = "CurseDarkness",
		name = "Curse of Darkenss",
		description = "The floor is much darker, and is only barely lit by the Isaac's natural aura"
		.. "#Occasionally rooms will be filled with swirling clouds of what could be fireflies or glowing motes of dust"
		.. "#Fire, explosions, and lasers will all cast light as normal, as will red creep"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_DARKNESS,
	},
	[LevelCurse.CURSE_OF_LABYRINTH] = {
		icon = "CurseLabyrinth",
		name = "Curse of the Labyrinth",
		description = "Appears only on the first floor of a chapter"
		.. "#Makes the floor an XL floor, which contains two Boss Rooms, two items and counts as two floors"
		.. "#!!! Only Boss/Treasure rooms are doubled. Other special rooms still contains as in single floor"
		.. "#Both Treasure Room doors will be unlocked on first floor"
		.. "#This curse cannot be removed by {{Collectible260}}Black Candle"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_LABYRINTH,
	},
	[LevelCurse.CURSE_OF_THE_LOST] = {
		icon = "CurseLost",
		name = "Curse of the Lost",
		description = "Removes the map from the HUD"
		.. "#Same effect as the Amnesia pill"
		.. "#Also increases the possible total room count of the current floor to the size of the next floor"
		.. "#Can be removed by {{Collectible260}}Black Candle, but increased rooms do not disappear"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_LOST,
	},
	[LevelCurse.CURSE_OF_THE_UNKNOWN] = {
		icon = "CurseUnknown",
		name = "Curse of The Unknown",
		description = ""
		.. "#Removes Isaac's health from the HUD, leaving the player unable to see how many hearts remain of any kind"
		.. "#Health will still be tracked as normal, including Soul/Black/Eternal Hearts, Holy Mantle Shield, and Extra Lives"
		.. "#When Isaac is down to half a heart, it is still marked by urine when entering a room"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_UNKNOWN,
	},
	[LevelCurse.CURSE_OF_THE_CURSED] = {
		icon = "CurseCursed",
		name = "Curse of The Cursed",
		description = "Changes normal doors into cursed doors"
		.. "#Due to mechanism of Cursed doors, Isaac takes damage regardless of flight"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_CURSED,
	},
	[LevelCurse.CURSE_OF_MAZE] = {
		icon = "CurseMaze",
		name = "Curse of The Maze",
		description = "Entering a new room (including teleporting) will occasionally take Isaac to the wrong room"
		.. ", with a screen-shake and sound effect to indicate the jump"
		.. "#Occasionally, discovered rooms can swap contents, without a screen-shake or sound effect"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_MAZE,
	},
	[LevelCurse.CURSE_OF_BLIND] = {
		icon = "CurseBlind",
		name = "Curse of The Blind",
		description = "All items are replaced with a question mark and are not revealed until they are picked up"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_BLIND,
	},
	[LevelCurse.CURSE_OF_GIANT] = {
		icon = "CurseGiant",
		name = "Curse of the Giant",
		description = "Combines normal sized room into 2x2, 1x2, 2x1 or L-shaped rooms"
		.. "#Narrow rooms are not affected"
		.. "#This curse cannot be removed by {{Collectible260}}Black Candle"
		.. "",
	},
}
idesc.descriptions["ko_kr"] = {}
idesc.descriptions["ko_kr"].curses = {
	[-1] = {
		icon = "Blank",
		name = "<저주를 찾을 수 없음(혹은 모드로 추가된 저주)>",
	},
	[LevelCurse.CURSE_OF_DARKNESS] = {
		icon = "CurseDarkness",
		name = "어둠의 저주",
		description = "캐릭터 주변을 제외한 모든 부분이 매우 어두워집니다."
		.. "#일부 방에서는 반딧불이 나타나 방의 일부분을 밝혀줍니다."
		.. "#불, 폭발, 레이저, 장판은 발광 효과가 적용되어 주위를 밝혀줍니다."
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_DARKNESS,
	},
	[LevelCurse.CURSE_OF_LABYRINTH] = {
		icon = "CurseLabyrinth",
		name = "미궁의 저주",
		description = "!!! 챕터 1 ~ 4의 홀수 층에서만 발동"
		.. "#2개의 스테이지를 하나로 합쳐 하나의 XL 스테이지로 만듭니다."
		.. "#!!! 보스방/보물방의 갯수만 2개로 늘어나며 나머지 특수방은 스테이지 하나인 것으로 취급됩니다."
		.. "#Basement/Cellar/Burning Basement XL 스테이지에서는 두 보물방 모두 열쇠를 필요로 하지 않습니다."
		.. "#이 저주는 {{Collectible260}}Black Candle 아이템으로도 제거할 수 없습니다."
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_LABYRINTH,
	},
	[LevelCurse.CURSE_OF_THE_LOST] = {
		icon = "CurseLost",
		name = "길 잃은 자의 저주",
		description = "HUD상에서 지도가 표시되지 않습니다."
		.. "#맵의 크기가 한 단계 더 커집니다."
		.. "#{{Collectible260}}Black Candle 아이템 획득 시 지도만 다시 표시되며, 기존의 늘어난 방 갯수는 그대로 유지됩니다."
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_LOST,
	},
	[LevelCurse.CURSE_OF_THE_UNKNOWN] = {
		icon = "CurseUnknown",
		name = "미지의 저주",
		description = ""
		.. "#현재 체력, Holy Mantle 보호막 여부, 그리고 남은 목숨 수가 HUD상에서 표시되지 않습니다."
		.. "#실제 체력 자체는 보이지만 않을 뿐, 일반적인 상황과 동일하게 작동합니다."
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_UNKNOWN,
	},
	[LevelCurse.CURSE_OF_THE_CURSED] = {
		icon = "CurseCursed",
		name = "저주받은 자의 저주",
		description = "모든 일반 방의 문을 저주방의 문으로 바꿉니다."
		.. "#저주방의 문은 현재 저주방에서 나가는 판정이 적용되어 비행 상태에서도 피해를 받습니다."
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_CURSED,
	},
	[LevelCurse.CURSE_OF_MAZE] = {
		icon = "CurseMaze",
		name = "미로의 저주",
		description = "다른 방으로 이동하거나 텔레포트할 때 :#일정 확률로 화면이 흔들리면서 다른 방으로 이동하거나,"
		.. "#일정 확률로 이미 클리어한 일반 방 2개의 위치를 서로 뒤바꿉니다."
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_MAZE,
	},
	[LevelCurse.CURSE_OF_BLIND] = {
		icon = "CurseBlind",
		name = "눈 먼 자의 저주",
		description = "모든 아이템이 빨간색 물음표로 표시되며 아이템을 집기 전까지 확인할 수 없습니다."
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_BLIND,
	},
	[LevelCurse.CURSE_OF_GIANT] = {
		icon = "CurseGiant",
		name = "거대한 자의 저주",
		description = "일반 사이즈의 일반 방을 2x2, 1x2, 2x1 혹은 L자 방으로 합칩니다."
		.. "#좁은 방은 영향이 없습니다."
		.. "#이 저주는 {{Collectible260}}Black Candle 아이템으로도 제거할 수 없습니다."
		.. "",
	},
}

EID:addEntity(-998, -1, -1, "Curses")
for lang, idescDescTables in pairs(idesc.descriptions) do
	for itemID, itemdesc in pairs(idescDescTables.curses) do
		EID:addEntity(-998, -1, itemID, itemdesc.name, itemdesc.description, lang)
	end
end



function INVDESC:LinkCollectibleForCharacter(playerType, collectibleType)
	wakaba:LinkCollectibleForCharacter(playerType, collectibleType)
end
function INVDESC:AddCollectibleBlacklist(collectibleType)
	if not collectibleType then return end
	if not has_value(wakaba._InventoryDesc.collectibleBlacklist, collectibleType) then
		table.insert(wakaba._InventoryDesc.collectibleBlacklist, collectibleType)
	end
end
function INVDESC:RemoveCollectibleBlacklist(collectibleType)
	if not collectibleType then return end
	for i = 1, #wakaba._InventoryDesc.collectibleBlacklist do
		if wakaba._InventoryDesc.collectibleBlacklist[i] == collectibleType then
			table.remove(wakaba._InventoryDesc.collectibleBlacklist, i)
		end
	end
end

function INVDESC:TestCollectibles(min, max)
	local items = {}
	for i = min, max do
		local config = Isaac.GetItemConfig()
		if config:GetCollectible(i) then
			table.insert(items, {
				type = 5,
				variant = 100,
				subtype = i,
			})
		end
	end
	idesc.state.showList = true
	local x,y = EID:getScreenSize().X, EID:getScreenSize().Y
	idesc.state.listprops.screenx = x
	idesc.state.listprops.screeny = y

	idesc.state.lists.items = items
	--idesc.state.lists.cards = cards
	--idesc.state.lists.pills = pills

	idesc.state.listprops.max = #items

end

if wakaba.version then
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_WAKABA, wakaba.COLLECTIBLE_WAKABAS_BLESSING)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_WAKABA_B, wakaba.COLLECTIBLE_WAKABAS_NEMESIS)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_SHIORI, wakaba.COLLECTIBLE_BOOK_OF_SHIORI)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_SHIORI_B, wakaba.COLLECTIBLE_BOOK_OF_SHIORI)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_SHIORI_B, wakaba.COLLECTIBLE_MINERVA_AURA)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_TSUKASA, wakaba.COLLECTIBLE_LUNAR_STONE)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_TSUKASA, wakaba.COLLECTIBLE_CONCENTRATION)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_TSUKASA_B, wakaba.COLLECTIBLE_FLASH_SHIFT)
	INVDESC:LinkCollectibleForCharacter(wakaba.PLAYER_TSUKASA_B, wakaba.COLLECTIBLE_ELIXIR_OF_LIFE)
end


local offset = (REPENTANCE and Options.HUDOffset) or 1

local json = require("json")
idesc.state = {
	showList = false,
	maxCollectibleID = Isaac.GetItemConfig():GetCollectibles().Size - 1,
	maxTrinketID = Isaac.GetItemConfig():GetTrinkets().Size - 1,
	lists = {
		items = {},
		curses = {},
		collectibles = {},
		lemegetonwisps = {},
		trinkets = {},
		cards = {},
		pills = {},
	},
	listprops = {
		screenx = EID:getScreenSize().X, 
		screeny = EID:getScreenSize().Y,
		max = 1,
		current = 1,
		offset = 0,
	},
}

local options = {
	listoffset = 200,
	listkey = Keyboard.KEY_F4,
	idleicon = 0,
	selicon = 17,
	lemegetonicon = 18,
	q0icon = 20,
	q1icon = 21,
	q2icon = 22,
	q3icon = 23,
	q4icon = 24,
}

local KeyboardToString = {}

for key,num in pairs(Keyboard) do

	local keyString = key
	
	local keyStart, keyEnd = string.find(keyString, "KEY_")
	keyString = string.sub(keyString, keyEnd+1, string.len(keyString))
	
	keyString = string.gsub(keyString, "_", " ")
	
	KeyboardToString[num] = keyString
	
end

local function getMaxCurseId(curse)
	local maxloop = 0
	while curse > 0 do
		maxloop = maxloop + 1
		curse = curse // 2
	end
	return maxloop
end

function idesc:SetCurrentItemLists()
	local items = {}
	local currCurse = Game():GetLevel():GetCurses()
	local curses = {}
	local collectibles = {}
	local lemegetonwisps = {}
	local trinkets = {}
	local cards = {}
	local pills = {}
	local currItemNo = 1
	for curseId = 0, getMaxCurseId(currCurse) do
		if 1 << curseId & currCurse > 0 then
			table.insert(curses, 1 << curseId)
			table.insert(items, {
				type = -998,
				variant = -1,
				subtype = 1 << curseId,
			})
		end
	end
	for itemId = 1, idesc.state.maxCollectibleID do
		for i = 0, Game():GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			local playerType = player:GetPlayerType()
			if not has_value(collectibles, itemId) 
			and not has_value(wakaba._InventoryDesc.collectibleBlacklist, itemId)
			and (player:HasCollectible(itemId, true) or (wakaba._InventoryDesc.defaultItems[playerType] and has_value(wakaba._InventoryDesc.defaultItems[playerType], itemId))) then
				table.insert(collectibles, itemId)
				table.insert(items, {
					type = 5,
					variant = 100,
					subtype = itemId,
				})
			end
		end
	end
	for itemId = 1, idesc.state.maxTrinketID do
		for i = 0, Game():GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if not has_value(trinkets) and player:HasTrinket(itemId) then
				table.insert(trinkets, itemId)
				table.insert(items, {
					type = 5,
					variant = 350,
					subtype = itemId,
				})
			end
		end
	end
	local wisps = Isaac.FindByType(EntityType.ENTITY_FAMILIAR, FamiliarVariant.ITEM_WISP, -1, false, false)
	for i, e in ipairs(wisps) do
		if not has_value(collectibles, e.SubType) 
		and not has_value(lemegetonwisps, e.SubType) 
		and not has_value(wakaba._InventoryDesc.collectibleBlacklist, e.SubType)
		then
			table.insert(lemegetonwisps, e.SubType)
			table.insert(items, {
				type = 5,
				variant = 100,
				subtype = e.SubType,
				lemegeton = true,
			})
		end
	end

	idesc.state.lists.items = items
	--idesc.state.lists.cards = cards
	--idesc.state.lists.pills = pills

	idesc.state.listprops.max = #items


end

local function getListCount()
	local x, y = EID:getScreenSize().X, EID:getScreenSize().Y
	local validcount = math.ceil((y - offset * 72) / ((EID.lineHeight + 1) * 2))
	return validcount
end

local function resetList()
	idesc.state.showList = false
	idesc.state.listprops.screenx = x
	idesc.state.listprops.screeny = y
	idesc.state.listprops.offset = 0
	idesc.state.listprops.current = 1
	idesc.state.listprops.max = 1
	EID:hidePermanentText()
	for i=0, Game():GetNumPlayers()-1 do

		local player = Isaac.GetPlayer(i)
		local data = player:GetData()

		--enable player controls
		if data.InvDescPlayerPosition then
			data.InvDescPlayerPosition = nil
		end
		if data.InvDescPlayerControlsDisabled then
			player.ControlsEnabled = true
			data.InvDescPlayerControlsDisabled = false
		end

	end
end

local function onUpdate(player)
	if Input.IsButtonTriggered(options.listkey, 0) then
		idesc:SetCurrentItemLists()
		if idesc.state.listprops.max <= 0 then
			return
		end
		idesc.state.showList = not idesc.state.showList
		local x,y = EID:getScreenSize().X, EID:getScreenSize().Y
		idesc.state.listprops.screenx = x
		idesc.state.listprops.screeny = y
		if idesc.state.showList then
		else
			resetList()
		end
	end
	if idesc.state.showList then
		if Input.IsButtonTriggered(Keyboard.KEY_ESCAPE, 0) or Input.IsActionTriggered(ButtonAction.ACTION_PAUSE, 0) then
			resetList()
			return
		end
		local listcount = getListCount()
		local listprops = idesc.state.listprops
		if Input.IsActionTriggered(ButtonAction.ACTION_SHOOTUP, player.ControllerIndex or 0) then
			idesc.state.listprops.current = listprops.current - 1
			if listprops.current - listprops.offset < 2 and listprops.offset > 0 then
				idesc.state.listprops.offset = listprops.offset - 1
			end
			if listprops.current <= 0 then
				idesc.state.listprops.current = listprops.max
				idesc.state.listprops.offset = (listprops.max - listcount) > 0 and listprops.max - listcount or 0
			end
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTLEFT, player.ControllerIndex or 0) then
			idesc.state.listprops.current = listprops.current - listcount
			idesc.state.listprops.offset = listprops.offset - listcount
			if listprops.offset < 0 then
				idesc.state.listprops.offset = 0
			end
			if listprops.current <= 0 then
				idesc.state.listprops.current = 1
				idesc.state.listprops.offset = 0
			end
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTDOWN, player.ControllerIndex or 0) then
			idesc.state.listprops.current = listprops.current + 1
			if listprops.current - listprops.offset > (listcount - 2) and listprops.max - listprops.offset > listcount then
				idesc.state.listprops.offset = listprops.offset + 1
			end
			if listprops.current > listprops.max then
				idesc.state.listprops.current = 1
				idesc.state.listprops.offset = 0
			end
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTRIGHT, player.ControllerIndex or 0) and (listprops.current + listcount) < listprops.max then
			idesc.state.listprops.current = listprops.current + listcount
			idesc.state.listprops.offset = listprops.offset + listcount
			if listprops.max - listprops.offset < listcount then
				idesc.state.listprops.current = listprops.current - (listcount - (listprops.max - listprops.offset))
				idesc.state.listprops.offset = listprops.max - listcount
			end
			if listprops.current > listprops.max then
				idesc.state.listprops.current = listprops.max
				idesc.state.listprops.offset = listprops.max - listcount
			end
		end
	end
end
idesc:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, onUpdate)

local function isDiff(x, y, x2, y2)
	if math.ceil(x / 1) ~= math.ceil(x2 / 1) then
		return true
	end
	if math.ceil(y / 1) ~= math.ceil(y2 / 1) then
		return true
	end
	return false
end


local function onRender()
	if ModConfigMenu and ModConfigMenu.IsVisible then
		resetList()
		return
	end

	if Encyclopedia and DeadSeaScrollsMenu.IsOpen() then
		resetList()
		return
	end

	if idesc.state.showList and not EID.CachingDescription then

		for i=0, Game():GetNumPlayers()-1 do

			local player = Isaac.GetPlayer(i)
			local data = player:GetData()

			--freeze players and disable their controls
			player.Velocity = Vector(0,0)

			if not data.InvDescPlayerPosition then
				data.InvDescPlayerPosition = player.Position
			end
			player.Position = data.InvDescPlayerPosition
			if not data.InvDescPlayerControlsDisabled then
				player.ControlsEnabled = false
				data.InvDescPlayerControlsDisabled = true
			end

			--disable toggling revelations menu
			if data.input and data.input.menu and data.input.menu.toggle then
				data.input.menu.toggle = false
			end

		end

		local validcount = getListCount()
		local listprops = idesc.state.listprops
		local x, y = EID:getScreenSize().X, EID:getScreenSize().Y
		local x2, y2 = idesc.state.listprops.screenx, idesc.state.listprops.screeny
		if isDiff(x, y, x2, y2) then
			if listprops.current - listprops.offset > validcount then
				idesc.state.listprops.offset = listprops.offset + (listprops.current - listprops.offset - validcount + 2)
				if listprops.offset + validcount > listprops.max then
					idesc.state.listprops.offset = listprops.max - validcount
				end
			end

			--idesc.state.showList = false
			--idesc.state.listprops.screenx = x
			--idesc.state.listprops.screeny = y
			--idesc.state.listprops.offset = 0
			--idesc.state.listprops.current = 1
			--idesc.state.listprops.max = 1
			--EID:hidePermanentText()
			--return
		end
		--idesc.BackgroundSprite:Render(Vector(x, y) / 2, Vector(0,0), Vector(0,0))
		local currentcursor = 1
		local currentlist = {}
		local desc = nil
		for i = 1, validcount do
			currentlist[i] = idesc.state.lists.items[listprops.offset + i]
			if listprops.offset + i == listprops.current then
				currentcursor = i
				desc = EID:getDescriptionObj(currentlist[i].type, currentlist[i].variant, currentlist[i].subtype)
				if currentlist[i].type == -998 then
					lang = EID:getLanguage() or "en_us"
					local entrytables = idesc.descriptions[lang] and idesc.descriptions[lang].curses or idesc.descriptions["en_us"].curses
					if entrytables[currentlist[i].subtype] then
						local entry = entrytables[currentlist[i].subtype]
						desc.Name = "{{"..entry.icon.."}} "..entry.name
						desc.Description = entry.description
					else
						local entry = entrytables[-1]
						desc.Name = entry.name
					end
				end
			end
		end
		EID:renderString("Current item list("..listprops.current.."/"..listprops.max..")", Vector(x - options.listoffset, 36-(EID.lineHeight*2)) - Vector(offset * 10, offset * -10), Vector(1,1), EID:getNameColor())
		EID:renderString("Press ".. KeyboardToString[options.listkey].." again to exit", Vector(x - options.listoffset, 36-EID.lineHeight) - Vector(offset * 10, offset * -10), Vector(1,1), EID:getNameColor())
		if not Input.IsActionPressed(ButtonAction.ACTION_MAP, EID.player.ControllerIndex) then
			for i, v in pairs(currentlist) do
				local obj = EID:getDescriptionObj(v.type, v.variant, v.subtype)
				local extIcon = nil
				if v.type == -998 then
					lang = EID:getLanguage() or "en_us"
					local entrytables = idesc.descriptions[lang] and idesc.descriptions[lang].curses or idesc.descriptions["en_us"].curses
					if entrytables[currentlist[i].subtype] then
						local entry = entrytables[currentlist[i].subtype]
						obj.Name = entry.name
						extIcon = "{{"..entry.icon.."}}"
					else
						local entry = entrytables[-1]
						obj.Name = entry.name
						extIcon = "{{"..entry.icon.."}}"
					end
				end

				local height = EID.lineHeight
				local renderpos = Vector(x - options.listoffset, 36 + ((i-1) * (height + 1) * 2)) - Vector(offset * 10, offset * -10)
				local iconrenderpos = renderpos + Vector(-23, ((height + 0) / 2) - 4)
				local qtextrenderpos = renderpos + Vector(-33, (height / 2) + 1)
				local textrenderpos = renderpos + Vector(0, 1)
				local isModded = obj.ModName
				local modIcon = isModded and EID.ModIndicator[obj.ModName].Icon
				local color = i == currentcursor and EID:getColor("{{ColorGold}}", EID:getNameColor()) or EID:getNameColor()
				local frameno = v.lemegeton == true and options.lemegetonicon or options.idleicon
				frameno = i == currentcursor and options.selicon or frameno
				idesc.IconBgSprite.Scale = Vector(EID.Scale / 3, EID.Scale / 3)
				idesc.IconBgSprite.Color = Color(1, 1, 1, EID.Config["Transparency"], 0, 0, 0)
				if v.type == -998 and extIcon then
					idesc.IconBgSprite:SetFrame("ItemIcon",frameno)
					idesc.IconBgSprite:Render(iconrenderpos, Vector(0,0), Vector(0,0))
					EID:renderString(extIcon, renderpos + Vector(-18, (height / 2) + 1), Vector(1,1), color)
				elseif v.variant == 100 then
					if REPENTANCE and EID.Config["ShowQuality"] then
						local quality = tonumber(EID.itemConfig:GetCollectible(tonumber(v.subtype)).Quality)
						frameno = i == currentcursor and options.selicon or options["q"..quality.."icon"]
						idesc.IconBgSprite:SetFrame("ItemIcon",frameno)
						idesc.IconBgSprite:Render(iconrenderpos, Vector(0,0), Vector(0,0))
						EID:renderString("{{Quality"..quality.."}}", qtextrenderpos, Vector(1,1), color)
					end
					EID:renderString("{{Collectible"..v.subtype.."}}", renderpos + Vector(-18, (height / 2) + 1), Vector(1,1), color)
				elseif v.variant == 350 then
					idesc.IconBgSprite:SetFrame("ItemIcon",frameno)
					idesc.IconBgSprite:Render(iconrenderpos, Vector(0,0), Vector(0,0))
					EID:renderString("{{Trinket"..v.subtype.."}}", renderpos + Vector(-18, (height / 2) + 1), Vector(1,1), color)
				end
				local curName = obj.Name
				
				if EID.Config["TranslateItemName"] ~= 2 then
					local prevLanguage = EID.Config["Language"]
					local curLanguage = EID:getLanguage()
					if curLanguage ~= "en_us" then
						EID.Config["Language"] = "en_us"
						local englishName = desc.PermanentTextEnglish or EID:getObjectName(v.type, v.variant, v.subtype)
						if v.type == -998 then
							englishName = idesc.descriptions["en_us"].curses[v.subtype].name
						end
						EID.Config["Language"] = prevLanguage
						if EID.Config["TranslateItemName"] == 1 then
							curName = englishName
						elseif EID.Config["TranslateItemName"] == 3 and curName ~= englishName then
							curName = curName.." ("..englishName..")"
						end
					end
				end
				EID:renderString(curName, textrenderpos + Vector(0, isModded and 0 or (EID.lineHeight / 2)), Vector(1,1), color)
				if isModded then
					local rst = ""
					rst = rst .. "{{"..EID.Config["ModIndicatorTextColor"].."}}" .. EID.ModIndicator[obj.ModName].Name
					if modIcon then
						rst = rst .. "{{".. EID.ModIndicator[obj.ModName].Icon .."}}"
					end
					EID:renderString(rst, textrenderpos + Vector(0, EID.lineHeight + 1), Vector(1,1), EID:getTextColor())
				end
			end
		end
		if desc then
			EID:displayPermanentText(desc)
		end
	else
	end
end
idesc:AddCallback(ModCallbacks.MC_POST_RENDER, onRender)

function idesc.InputAction(_, entity, inputHook, buttonAction)

	if idesc.state.showList and buttonAction ~= ButtonAction.ACTION_FULLSCREEN and buttonAction ~= ButtonAction.ACTION_CONSOLE and buttonAction ~= options.listkey then

		if inputHook == InputHook.IS_ACTION_PRESSED or inputHook == InputHook.IS_ACTION_TRIGGERED then
			return false
		else
			return 0
		end

	end

end
idesc:AddCallback(ModCallbacks.MC_INPUT_ACTION, idesc.InputAction)















if ModConfigMenu then
	local MCM = ModConfigMenu
	MCM.RemoveCategory("Inventory Desc")
	MCM.AddTitle("Inventory Desc", "Inventory Descriptions")
	MCM.AddSpace("Inventory Desc")
	MCM.AddText("Inventory Desc", function() return ""..idesc.version end)
	MCM.AddText("Inventory Desc", function() return "by kohashiwahaba aka. Mika" end)
	MCM.AddSpace("Inventory Desc")
	MCM.AddText("Inventory Desc", function() return "All other options follow" end)
	MCM.AddText("Inventory Desc", function() return "options from External Item Descriptions" end)
	MCM.AddSpace("Inventory Desc")
	
	MCM.AddSetting(
		"Inventory Desc",
		{
			Type = ModConfigMenu.OptionType.KEYBIND_KEYBOARD,
			CurrentSetting = function()
				return options.listkey
			end,
			Display = function()
				local currentValue = options.listkey
				local displayString = "List toggle key : "
				local key = "None"
				if currentValue > -1 then
					key = "Unknown Key"
					if InputHelper.KeyboardToString[currentValue] then
						key = InputHelper.KeyboardToString[currentValue]
					end
				end
				displayString = displayString .. key
				return displayString
			end,
			Popup = function()

				local currentValue = options.listkey
	
				local goBackString = "back"
				if ModConfigMenu.Config.LastBackPressed then
	
					if InputHelper.KeyboardToString[ModConfigMenu.Config.LastBackPressed] then
						goBackString = InputHelper.KeyboardToString[ModConfigMenu.Config.LastBackPressed]
					end
	
				end
	
				local keepSettingString = ""
				if currentValue > -1 then
	
					local currentSettingString = nil
					if InputHelper.KeyboardToString[currentValue] then
						currentSettingString = InputHelper.KeyboardToString[currentValue]
					end
	
					keepSettingString = "This setting is currently set to \"" .. currentSettingString .. "\".$newlinePress this button to keep it unchanged.$newline$newline"
	
				end
	
				local deviceString = ""
				deviceString = "keyboard"
	
				return "Press a button on your " .. deviceString .. " to change this setting.$newline$newline" .. keepSettingString .. "Press \"" .. goBackString .. "\" to go back and clear this setting."
	
			end,
			PopupGfx = ModConfigMenu.PopupGfx.WIDE_SMALL,
			PopupWidth = 280,
			OnChange = function(current)
				if current then
					options.listkey = current
				end
			end,
			Info = {
				"Press to display list and descriptions for current held items(Default = F4 key)",
			}
		}
	)
	MCM.AddSetting(
		"Inventory Desc",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return options.listoffset
			end,
			Minimum = 100,
			Maximum = 600,
			ModifyBy = 10,
			Display = function()
				return "List offset: " .. options.listoffset
			end,
			OnChange = function(current)
				options.listoffset = current
			end,
			Info = {
				"Right offset for list of items(Default = 200)",
			}
		}
	)





end



function idesc:init(continue)
	local tempstate
	if idesc:HasData() then
		tempstate = json.decode(idesc:LoadData())
		options = tempstate
	end
end
idesc:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, idesc.init)

function idesc:save(shouldSave)
	if shouldSave then
    idesc:SaveData(json.encode(options))
	end
end


function idesc:OnGameExit(shouldSave)
	idesc:save(shouldSave)
end

--idesc:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, idesc.OnGameExit)

print("Inv3ntory Descriptions Loaded")
