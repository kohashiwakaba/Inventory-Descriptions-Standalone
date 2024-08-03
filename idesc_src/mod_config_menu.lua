if not ModConfigMenu then return end

local function AnIndexOf(t, val)
	for k, v in ipairs(t) do
		if v == val then
			return k
		end
	end
	return 1
end

local idesc = InventoryDescriptions
local options = idesc.options
local MCM = ModConfigMenu
MCM.RemoveCategory("Inventory Desc")
MCM.AddTitle("Inventory Desc", "Inventory Descriptions")
MCM.AddSpace("Inventory Desc")
MCM.AddText("Inventory Desc", function() return ""..idesc.version end)
MCM.AddText("Inventory Desc", function() return "by Richer-chan" end)
MCM.AddSpace("Inventory Desc")
MCM.AddText("Inventory Desc", function() return "All other options follow" end)
MCM.AddText("Inventory Desc", function() return "options from External Item Descriptions" end)
MCM.AddSpace("Inventory Desc")

MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.KEYBIND_KEYBOARD,
		CurrentSetting = function()
			return idesc:getOptions("listkey")
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
				idesc:setOptions("listkey", current)
			end
		end,
		Info = {
			"Press to display list and descriptions for current held items(Default = F5 key)",
		}
	}
)
MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.KEYBIND_KEYBOARD,
		CurrentSetting = function()
			return idesc:getOptions("switchkey")
		end,
		Display = function()
			local currentValue = idesc:getOptions("switchkey")
			local displayString = "Mode switch key : "
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

			local currentValue = idesc:getOptions("switchkey")

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
				idesc:setOptions("switchkey", current)
			end
		end,
		Info = {
			"Press to switch list mode of descriptions for current held items(Default = F6 key)",
		}
	}
)
if REPENTOGON then
MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.BOOLEAN,
		CurrentSetting = function()
			return idesc:getOptions("invpassivehistory")
		end,
		Display = function()
			return 'Collectible History: ' .. (idesc:getOptions("invpassivehistory") and "true" or "false")
		end,
		OnChange = function(currentBool)
			idesc:setOptions("invpassivehistory", currentBool)
		end,
		Info = {"Set display mode in Inventory Descriptions."}
	}
)
end


MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.NUMBER,
		CurrentSetting = function()
			return idesc:getOptions("listoffset")
		end,
		Minimum = 100,
		Maximum = 600,
		ModifyBy = 10,
		Display = function()
			return "List offset: " .. idesc:getOptions("listoffset")
		end,
		OnChange = function(current)
			idesc:setOptions("listoffset", current)
		end,
		Info = {
			"Right offset for list of items(Default = 200)",
		}
	}
)

MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.BOOLEAN,
		CurrentSetting = function()
			return idesc:getOptions("invlistmode") == "grid"
		end,
		Display = function()
			return 'Display Mode: ' .. idesc:getOptions("invlistmode")
		end,
		OnChange = function(currentBool)
			idesc:setOptions("invlistmode", currentBool and "grid" or "list")
		end,
		Info = {"Set display mode in Inventory Descriptions."}
	}
)

MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.NUMBER,
		CurrentSetting = function()
			return idesc:getOptions("invgridcolumn")
		end,
		Minimum = 3,
		Maximum = 10,
		ModifyBy = 1,
		Display = function()
			return "Grid columns: " .. idesc:getOptions("invgridcolumn")
		end,
		OnChange = function(current)
			idesc:setOptions("invgridcolumn", current)
		end,
		Info = {
			"Number of Columns for grid of items(Default = 6)",
		}
	}
)
local initPositions = {"character", "collectible", "collectible_modded", "trinket"}
MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.NUMBER,
		CurrentSetting = function()
			return AnIndexOf(initPositions, idesc:getOptions("invinitcursor"))
		end,
		Minimum = 1,
		Maximum = 4,
		ModifyBy = 1,
		Display = function()
			return "Initial cursor: " .. idesc:getOptions("invinitcursor")
		end,
		OnChange = function(current)
			idesc:setOptions("invinitcursor", initPositions[current])
		end,
		Info = {
			"Initial cursor position on list show (Default = character)",
		}
	}
)
MCM.AddSpace("Inventory Desc")
MCM.AddSetting(
	"Inventory Desc",
	{
		Type = ModConfigMenu.OptionType.BOOLEAN,
		CurrentSetting = function() return true end,
		Display = function()
			return "--! DISABLE INVDESC HOTKEY !--"
		end,
		OnChange = function(current)
			idesc:setOptions("listkey", -1)
			idesc:setOptions("switchkey", -1)
		end,
		Info = {
			"Press this to disable Inventory Descriptions hotkeys",
		}
	}
)