if not ModConfigMenu then return end
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