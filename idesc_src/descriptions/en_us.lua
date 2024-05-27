local desclang = "en_us"

local idesc = InventoryDescriptions
idesc.descriptions[desclang] = {}
idesc.descriptions[desclang].playernotes = {
	-- copy-paste this snippet
	[-50000] = {
		-- icon = "",
		name = "Isaac",
		description = ""
		.. "#"
		.. "",
	},
	-- copy-paste this snippet end
	[-666] = {
		icon = "Blank",
		name = "<Player not found(or modded player)>",
	},
	[PlayerType.PLAYER_ISAAC] = {
		-- icon = "",
		name = "Isaac",
		description = "Isaac Moriah is the main character of the series, returning from the original {{ColorLime}}The Binding of Isaac{{CR}} From 2011."
		.. "#Abraham is commanded by God to sacrifice his only son, Isaac, to prove his loyalty and love."
		.. "#Isaac has average stats, no upsides and downsides"
		.. "#{{Collectible105}} {{GoldenKey}}Starts With : The D6({{Player4}}-> Defeat Isaac)"
		.. "",
	},
	[PlayerType.PLAYER_MAGDALENE] = {
		-- icon = "",
		name = "Magdalene",
		description = "Magdalene is the name of Isaac’s mother Magdalene O. Moriah, or MOM"
		.. "#The last name Moriah is a reference to the biblical story of Isaac where the name Moriah is the name of the mountain Isaac was to be sacrificed on in the Book of Genesis."
		.. "#{{Heart}} More Health, but low Speed"
		.. "#{{Collectible45}} Starts With : Yum Heart"
		.. "#{{Pill}} {{GoldenKey}}Starts With : Full Health pill(32: Complete Aprils Fool)"
		.. "",
	},
	[PlayerType.PLAYER_CAIN] = {
		-- icon = "",
		name = "Cain",
		description = "Cain commits the first murder by killing Abel."
		.. "#!!! Cain can only shoot tears from his right eye. This affects certain items."
		.. "#{{Damage}} High damage, but low health"
		.. "#{{Collectible46}} Starts with : Lucky Foot"
		.. "#{{Trinket19}} {{GoldenKey}}Starts with : Paper Clip({{GreedMode}}: 68{{Coin}})"
		.. "",
	},
	[PlayerType.PLAYER_JUDAS] = {
		-- icon = "",
		name = "Judas",
		description = "Judas betrayed Jesus to the Romans in exchange for 3{{Coin}}"
		.. "#{{Damage}} Super High damage, but super low health"
		.. "#{{Collectible34}} Starts with : The Book of Belial"
		.. "",
	},
	[PlayerType.PLAYER_BLUEBABY] = {
		-- icon = "",
		name = "???",
		description = "??? is ??? of ???"
		.. "#???'s look originally came from Dead Baby Dressup, one of Edmund McMillen's first Flash games"
		.. "#{{SoulHeart}} ???'s health meter is unique in that he cannot gain red heart containers. Any item that grant him a red heart container (including an empty one), adds a Soul Heart instead"
		.. "#Bone Hearts grant an empty Bone Heart upon pickup, but they cannot be refilled using Red Hearts"
		.. "#Sleeping on a bed will give ??? three Soul Hearts"
		.. "#Destroying a poop spawns a blue fly"
		.. "#{{Collectible36}} Starts with : The Poop"
		.. "",
	},
	[PlayerType.PLAYER_EVE] = {
		-- icon = "",
		name = "Eve",
		description = "Eve was the first woman on earth, born of Adam's rib in the book of Genesis, and was banned from the Garden of Eden"
		.. "#Eve has a higher chance of finding Soul Hearts than other characters"
		.. "#Super low damage"
		.. "#{{Collectible117}} Starts with : Dead Bird"
		.. "#{{Collectible122}} Starts with : Whore of Babylon"
		.. "#{{Blank}} Eve's Whore of Babylon Whore of Babylon's effect activates with one remaining Red Heart, instead of half a heart, and it will set her damage multiplier to 1.00"
		.. "#{{Collectible126}} {{GoldenKey}}Starts with : Razor Blade({{GreedMode}}: 439{{Coin}})"
		.. "",
	},
	[PlayerType.PLAYER_SAMSON] = {
		-- icon = "",
		name = "Samson",
		description = "Samson was a supernaturally strong warrior who derived his power from his Nazarite vow, entitling immense strength to Samson if he did not cut his hair."
		.. "#{{Collectible157}} Starts with : Bloody Lust"
		.. "#{{Trinket34}} {{GoldenKey}}Starts with : Child's Heart(34: Complete Ultra Hard)"
		.. "",
	},
	[PlayerType.PLAYER_AZAZEL] = {
		-- icon = "",
		name = "Azazel",
		description = "Azazel is the name given to the goat that was cast into the wild as part of Jewish atonement rituals"
		.. "#Azazel also was fallen angel who taught people to make weapons and jewelry and taught women the 'sinful art' of painting their faces"
		.. "#{{Damage}} High damage, but super low range"
		.. "#{{Collectible118}} Azazel starts with a short-ranged version of Brimstone Brimstone which deals damage 8 times in one second"
		.. "#Azazel has the ability to fly"
		.. "",
	},
	[PlayerType.PLAYER_LAZARUS] = {
		-- icon = "",
		name = "Lazarus",
		description = "Lazarus of Bethany was resurrected by Jesus 4 days after his death"
		.. "#{{Collectible332}} Unique ability : Lazarus' Rags"
		.. "#!!! Resurrection items activate in a set order. Lazarus' inherent extra life is after Soul of Lazarus and 1up!"
		.. "#{{Damage}} Permanent +0.5 Damage per revival through {{Collectible332}}Lazarus' Rags"
		.. "#{{Collectible214}} {{GoldenKey}}Starts with : Anemic(31: Complete Backasswards)"
		.. "#{{Pill}} Starts with : a Random pill"
		.. "",
	},
	[PlayerType.PLAYER_EDEN] = {
		-- icon = "",
		name = "Eden",
		description = "Eden is the fabled 'mystery man'"
		.. "#In the book of Genesis, the Garden of Eden was the place where Adam and Eve lived before consuming the fruit of the tree of the knowledge of good and evil, and thus being cast out by God"
		.. "#Each time a game is started as Eden, one token is consumed and a new Eden is randomly generated based on the seed, with one of the multiple hairstyles, random base stats, and two randomly chosen starting items"
		.. "#{{CurseBlind}} Starts with : ???"
		.. "#{{CurseBlind}} Starts with : ???"
		.. "",
	},
	[PlayerType.PLAYER_THELOST] = {
		-- icon = "",
		name = "The Lost",
		description = "The Lost is ??? of ???, maybe related with {{Trinket23}}Missing Poster?"
		.. "#The Lost starts with flight, spectral tears"
		.. "#The Lost starts with no health and cannot gain health by any means. Therefore, {{ColorRed}}it will die from any damage taken.{{CR}} Beware of Demon beggars and Blood Donation Machines"
		.. "#{{GreedMode}} The Lost can activate the button in Greed mode without taking damage, at the price of one less coin spawning in the next wave's reward"
		.. "#The Lost can take devil deals and Black Market items for free, but taking one will despawn all other deals in the room"
		.. "#{{Collectible609}} Starts with : Eternal D6"
		.. "#{{Collectible313}} {{GoldenKey}}Unique ability : Holy Mantle({{GreedMode}}: 879{{Coin}})"
		.. "",
	},
	[PlayerType.PLAYER_LAZARUS2] = {
		-- icon = "",
		name = "Isaac",
		description = "Lazarus of Bethany was resurrected by Jesus 4 days after his death"
		.. "#Has been revived, but is bleeding because Lazarus is already dead once"
		.. "#Will be reverted into normal Lazarus when new floor starts"
		.. "#{{Collectible214}} Starts with : Anemic"
		.. "#{{Collectible214}} {{GoldenKey}}Unique ability : Anemic(Permanent/31: Complete Backasswards)"
		.. "#!!! Anemic effect is permanent and no longer requires him to take damage"
		.. "",
	},
	[PlayerType.PLAYER_BLACKJUDAS] = {
		-- icon = "",
		name = "Black Judas",
		description = "Judas betrayed Jesus to the Romans in exchange for 3{{Coin}}"
		.. "#{{Damage}} Super High damage"
		.. "#{{BlackHeart}} Black Judas's health meter is unique in that he cannot gain red heart containers. Any item that grant him a red heart container (including an empty one), adds a Black Heart instead"
		.. "#Bone Hearts grant an empty Bone Heart upon pickup, but they cannot be refilled using Red Hearts"
		.. "#Sleeping on a bed will give Black Judas three Soul Hearts"
		.. "#!!! Completion marks share with {{Player3}}Judas"
		.. "",
	},
	[PlayerType.PLAYER_LILITH] = {
		-- icon = "",
		name = "Lilith",
		description = "Lilith is the original woman God created before Eve. She refused to become subservient to Adam and left Eden"
		.. "#Lilith is permanently blindfolded, meaning she has no ability to fire tears; she instead deals damage with the Incubus Incubus familiar that follows her"
		.. "#Lilith strongly benefits from other familiars and familiar enhancers"
		.. "#{{Collectible360}} Unique ability : Incubus"
		.. "#{{Collectible367}} Starts with : Box of Friends"
		.. "#{{Collectible412}} Starts with : Cambion Conception"
		.. "#"
		.. "",
	},
	[PlayerType.PLAYER_KEEPER] = {
		-- icon = "",
		name = "Keeper",
		description = "Keeper is ???'s ??? from greed"
		.. "#{{CoinHeart}} Keeper uses coins as health. He starts with two Coin Hearts, loses one every time he is damaged, and heals for one coin every time he obtains a coin"
		.. "#!!! Keeper cannot have more than 3 Coin Hearts"
		.. "#Keeper has a triple shot, but low tears"
		.. "#Instead of using coin heart containers to trade for Devil Deal items, they must be bought using coins. One-heart and two-heart deals cost 15 and 30 cents, respectively"
		.. "#{{Collectible349}} {{GoldenKey}}Starts with : Wooden Nickel({{Player14}}-> Defeat Isaac)"
		.. "#{{Trinket83}} {{GoldenKey}}Starts with : Store Key({{Player14}}-> Defeat Satan)"
		.. "",
	},
	[PlayerType.PLAYER_APOLLYON] = {
		-- icon = "",
		name = "Apollyon",
		description = "Apollyon is the Greek name for the angel Abaddon, and is also known as 'The Destroyer'"
		.. "#Apollyon is a living statue, and has flesh but it appears like stone"
		.. "#{{Collectible477}} Starts with : Void"
		.. "",
	},
	[PlayerType.PLAYER_THEFORGOTTEN] = {
		-- icon = "",
		name = "The Forgotten",
		description = "The Forgotten is ???'s ??? from ???"
		.. "#{{Chargeable}} He cannot fire regular tears, and instead has a bone club that can be swung as a melee weapon or charged to be thrown"
		.. "#{{BoneHeart}} The Forgotten cannot acquire regular heart containers. Any regular heart containers acquired will be turned into bone hearts"
		.. "#{{ColorRed}}Breaking Bone hearts LOSES Devil deal chance, regardless of damage source{{CR}}"
		.. "#Any soul or black hearts will be given to The Soul"
		.. "#Pressing the swap key will switch control to The Soul"
		.. "",
	},
	[PlayerType.PLAYER_THESOUL] = {
		-- icon = "",
		name = "The Soul",
		description = "The Soul is a blue ghost chained to The Forgotten"
		.. "#Unlike The Forgotten, The Soul shoots spectral tears, and has ability to fly"
		.. "#While controlling The Soul, The Forgotten cannot take damage, blocks all normal shots that touch it, and attracts shots in a small radius"
		.. "#{{SoulHeart}} The Soul cannot gain red heart containers. Any item that grant him a red heart container (including an empty one), adds a Soul Heart instead"
		.. "#Any Bone Hearts will be given to The Forgotten"
		.. "#Sleeping on a bed will give ??? three Soul Hearts"
		.. "#Pressing the swap key will switch control to The Forgotten"
		.. "",
	},
	[PlayerType.PLAYER_BETHANY] = {
		-- icon = "",
		name = "Bethany",
		description = "Bethany was the sister of Lazarus"
		.. "#Bethany is unable to utilize Soul Hearts and Black Hearts as health"
		.. "#Soul Hearts are converted to a resource unique to Bethany called 'Soul Charges' at the rate of one charge per half heart"
		.. "#Soul charges can be consumed to use Bethany's activated item when the item isn't fully charged, at the rate of one soul charge per empty bar of charge"
		.. "#{{Collectible584}} Starts with : Book of Virtues"
		.. "",
	},
	[PlayerType.PLAYER_JACOB] = {
		-- icon = "",
		name = "Jacob",
		description = "Jacob & Esau are the twin sons of Isaac and Rebekah"
		.. "#Jacob & Esau are controlled as one, move at the same speed, and use the same coins, bombs, and keys. Otherwise, they are completely independent in terms of stats, items, and health"
		.. "#Both characters have collision and can be separated,"
		.. "#Holding drop key can be held to keep Esau in place while Jacob is free to move around the room"
		.. "#Actives for Jacob can be used by pressing the normal active item button"
		.. "#To use cards and pills, the player holds the drop button and then presses the corresponding character's active item buttons"
		.. "#If either Jacob or Esau die, they both die regardless of the other character's remaining health"
		.. "",
	},
	[PlayerType.PLAYER_ESAU] = {
		-- icon = "",
		name = "Esau",
		description = "Jacob & Esau are the twin sons of Isaac and Rebekah"
		.. "#Jacob & Esau are controlled as one, move at the same speed, and use the same coins, bombs, and keys. Otherwise, they are completely independent in terms of stats, items, and health"
		.. "#Both characters have collision and can be separated,"
		.. "#Holding drop key can be held to keep Esau in place while Jacob is free to move around the room"
		.. "#Actives for Esau can be used by pressing the card/pill button"
		.. "#To use cards and pills, the player holds the drop button and then presses the corresponding character's active item buttons"
		.. "#If either Jacob or Esau die, they both die regardless of the other character's remaining health"
		.. "",
	},

	-- Tainted
	[PlayerType.PLAYER_ISAAC_B] = {
		-- icon = "",
		name = "Isaac(Tainted)",
		description = "The Broken: Isaac got hit too many times from Mom"
		.. "#Tainted Isaac can only hold 8 passive items at a time. Tainted Isaac's current 8 passive items are visible in the top-left corner of the screen, with one highlighted by a white square"
		.. "#Upon picking up a 9th passive item, the item currently selected, or rather the item currently in the white square, will be dropped on a pedestal in front of Tainted Isaac"
		.. "#The swap key can be pressed to cycle which item is selected"
		.. "",
	},
	[PlayerType.PLAYER_MAGDALENE_B] = {
		-- icon = "",
		name = "Magdalene(Tainted)",
		description = "The Dauntless: Magdalene must keep going even when she loses her beauty"
		.. "#When Tainted Magdalene's health is above 2 Red Hearts, she will leave red creep on the floor and will lose health at the rate of half a heart per 10 seconds"
		.. "#This health loss affects all types of hearts, but prioritizes red heart health. Affected hearts on the health bar are faded and slowly pulsating"
		.. "#Only non-leaky red heart damage will impose Devil/Angel chance penalty"
		.. "#{{Collectible724}} all enemies have a chance of dropping a Half Red Heart upon death which will flicker and disappear in 2 seconds"
		.. "#On contact, Tainted Magdalene activate Melee attak, which hits deal 6x damage and all enemies killed by the melee attack have a 100% chance of dropping a half red heart"
		.. "#She also receives double healing from all sources except heart pickups"
		.. "#{{Collectible45}} Unique ability : Yum Heart"
		.. "",
	},
	[PlayerType.PLAYER_CAIN_B] = {
		-- icon = "",
		name = "Cain(Tainted)",
		description = "The Hoarder: The sin is too high for killing his brother"
		.. "#Tainted Cain can't obtain items through any means other than the {{Collectible710}}Bag of Crafting, and attempting to take an item from a pedestal will reduce it into an assortment of pickups"
		.. "#The pickups dropped are dependent on what type of room the item was touched in"
		.. "#{{Collectible710}} Unique ability : Bag of Crafting"
		.. "#{{Blank}} Once 8 pickups are held in the bag, the bag will show a preview what would be crafted. Holding down the Use Pill/Card button will craft the item and place it directly in Tainted Cain's inventory"
		.. "#{{Blank}} If pickups are collected after the max of 8 is reached, the contents shift left and up, deleting the top left slot and adding at the bottom right. Tapping the switch key cycles the bag's contents left and up in a loop, making it possible to choose which pickup to overwrite"
		.. "#{{CurseBlind}} Curse of the Blind hides the crafting preview"
		.. "",
	},
	[PlayerType.PLAYER_JUDAS_B] = {
		-- icon = "",
		name = "Judas(Tainted)",
		description = "The Deceiver: The betrayal is forever"
		.. "#{{BlackHeart}} Tainted Judas's health meter is unique in that he cannot gain red heart containers. Any item that grant him a red heart container (including an empty one), adds a Black Heart instead"
		.. "#Bone Hearts grant an empty Bone Heart upon pickup, but they cannot be refilled using Red Hearts"
		.. "#Sleeping on a bed will give Tainted Judas three Soul Hearts"
		.. "#{{Collectible705}} Unique ability : Dark Arts"
		.. "#{{Blank}} For every enemy/bullet he walked through, he will gain a temporary +1 damage bonus, which wears off at a rate of -0.25 damage every half second"
		.. "",
	},
	[PlayerType.PLAYER_BLUEBABY_B] = {
		-- icon = "",
		name = "???(Tainted)",
		description = "The Soiled: Time to return into soil"
		.. "#{{PoopPickup}} Tainted ??? cannot use bombs. Bomb pickups are replaced by poop pickups"
		.. "#Poop pickups also have a chance to drop from fallen enemies and by Tainted ??? by dealing damage"
		.. "#{{Collectible725}} The order in which different types of poop are obtained is predetermined based on the seed"
		.. "#{{SoulHeart}} ???'s health meter is unique in that he cannot gain red heart containers. Any item that grant him a red heart container (including an empty one), adds a Soul Heart instead"
		.. "#{{Collectible715}} Unique ability : Hold"
		.. "",
	},
	[PlayerType.PLAYER_EVE_B] = {
		-- icon = "",
		name = "Eve(Tainted)",
		description = "The Curdled: The pain is not over"
		.. "#{{Collectible713}} Unique ability : Sumptorium(Passive)"
		.. "#{{Blank}} Holding attack button for 2 seconds automatically actives Sumptorium"
		.. "#{{Blank}} Using Sumptorium from pocket slot destroy all blood clots, returning the health used to create them"
		.. "#If every remaining clot is killed and Tainted Eve only has half a red heart left, she begins to use Sumptorium as a weapon that functions similarly to Mom's Knife"
		.. "",
	},
	[PlayerType.PLAYER_SAMSON_B] = {
		-- icon = "",
		name = "Samson(Tainted)",
		description = "The Savage: Samson killed an army of 1,000 Philistines using a donkey's jawbone"
		.. "#{{Collectible704}} Unique ability : Berserk!(Passive)"
		.. "#{{Blank}} Cannot see charges, Berserk! will be automatically activated after fully charged"
		.. "#{{Blank}} Berserk! will be also charged when Tainted Samson takes damage"
		.. "",
	},
	[PlayerType.PLAYER_AZAZEL_B] = {
		-- icon = "",
		name = "Azazel(Tainted)",
		description = "The Benighted: The fallen angel tried to beat the god, but failed, and his wings and horns are ripped off"
		.. "#{{Collectible118}} His brimstone laser no longer has short range, but now is very thin, and deals half of his damage"
		.. "#CANNOT fly"
		.. "#{{Collectible704}} Unique ability : Hemoptysis"
		.. "#{{Blank}} Hemoptysis activates at the start of charging, instead of double tap"
		.. "#{{Blank}} Hitting enemies with the Hemoptysis sneeze halves Brimstone's remaining charge time"
		.. "",
	},
	[PlayerType.PLAYER_LAZARUS_B] = {
		-- icon = "",
		name = "Lazarus(Tainted)",
		description = "The Enigma: The miracle is always the mystery"
		.. "#{{Collectible711}} Unique ability : Flip"
		.. "#Whenever a room is cleared, including each wave of multi-wave rooms, Tainted Lazarus swaps between the two forms"
		.. "#Each character has separate items, attributes, trinkets, and consumables"
		.. "#Some items(such as Plot-critical items) are counted as both characters having them"
		.. "#!!! ghostly form of an item only flips when Flip is used manually"
		.. "",
	},
	[PlayerType.PLAYER_EDEN_B] = {
		-- icon = "",
		name = "Eden(Tainted)",
		description = "The Capricious: Now the garden is 'deleted'"
		.. "#Each time a game is started as Tainted Eden, one token is consumed and a new Eden is randomly generated based on the seed, with one of the multiple hairstyles, random base stats, and two randomly chosen starting items"
		.. "#{{Collectible721}} {{ColorRed}}Every time they take damage, all of their stats, items (passive and active), their trinket and their currently-held card or pill get re-rolled{{CR}}"
		.. "#{{CurseBlind}} Starts with : ???"
		.. "#{{CurseBlind}} Starts with : ???"
		.. "",
	},
	[PlayerType.PLAYER_THELOST_B] = {
		-- icon = "",
		name = "The Lost(Tainted)",
		description = "The Baleful: The mercy is no longer, The ghost is now miserable"
		.. "#{{Collectible691}} {{Quality0}}~{{Quality2}} items has 20% chance to be rerolled and only items with 'offensive' tag will appear"
		.. "#{{Blank}} Useless items no longer appear, but defensive items also no longer appear"
		.. "#{{Blank}} Blacklisted items only appear with set drops"
		.. "#{{Card51}} Starts with : Holy Card"
		.. "#{{Card51}} All cards that spawn have roughly a 10% chance of being turned into a Holy Card"
		.. "",
	},
	[PlayerType.PLAYER_LAZARUS2_B] = {
		-- icon = "",
		name = "Lazarus(Tainted-Dead)",
		description = "The Enigma: The miracle is always the mystery"
		.. "#{{Collectible711}} Unique ability : Flip"
		.. "#Whenever a room is cleared, including each wave of multi-wave rooms, Tainted Lazarus swaps between the two forms"
		.. "#Each character has separate items, attributes, trinkets, and consumables"
		.. "#Some items(such as Plot-critical items) are counted as both characters having them"
		.. "#!!! ghostly form of an item only flips when Flip is used manually"
		.. "",
	},
	[PlayerType.PLAYER_LILITH_B] = {
		-- icon = "",
		name = "Lilith(Tainted)",
		description = "The Harlot: The baby of the woman, who had intercourse with demons in the underworld, was born"
		.. "#{{Collectible728}} Unique ability : Gello(Passive)"
		.. "#Holding attack button launches Gello, It returns to Tainted Lilith once the fire button is released"
		.. "",
	},
	[PlayerType.PLAYER_KEEPER_B] = {
		-- icon = "",
		name = "Keeper(Tainted)",
		description = "The Miser: The greed brings more greedy"
		.. "#{{CoinHeart}} Tainted Keeper uses coins as health. He starts with two Coin Hearts, loses one every time he is damaged, and heals for one coin every time he obtains a coin"
		.. "#!!! Tainted Keeper cannot have more than 2 Coin Hearts"
		.. "#Tainted Keeper has a quad shot, but low tears"
		.. "#Instead of using coin heart containers to trade for Devil Deal items, they must be bought using coins. One-heart and two-heart deals cost 15 and 30 cents, respectively"
		.. "#Whenever an enemy is defeated, a random coin is dropped that will vanish quickly"
		.. "#Most items encountered when playing as Tainted Keeper must first be paid for with coins"
		.. "#In the standard game mode, Shops are different and much better for Tainted Keeper. They do not require a key, and extra {{TreasureRoom}}/{{BossRoom}}/{{Shop}} items are in sale"
		.. "",
	},
	[PlayerType.PLAYER_APOLLYON_B] = {
		-- icon = "",
		name = "Apollyon(Tainted)",
		description = "The Empty: The abyss is bottomless"
		.. "#{{Collectible706}} Unique ability : Abyss"
		.. "",
	},
	[PlayerType.PLAYER_THEFORGOTTEN_B] = {
		-- icon = "",
		name = "The Forgotten(Tainted)",
		description = "The Fettered: Cannot move himself"
		.. "#{{SoulHeart}} Tainted Forgotten's health meter is unique in that he cannot gain red heart containers. Any item that grant him a red heart container (including an empty one), adds a Soul Heart instead"
		.. "#Tainted Forgotten invincible, but cannot move without soul"
		.. "#Any items picked up will normally behave as if Tainted Forgotten picked them up and don't directly affect Tainted Soul"
		.. "",
	},
	[PlayerType.PLAYER_THESOUL_B] = {
		-- icon = "",
		name = "The Soul(Tainted)",
		description = "Tainted Soul cannot shoot tears, but is able to pick up and move around with, or throw, Tainted Forgotten"
		.. "#Tainted Soul Does NOT have any health, but unlike The Lost, Tainted Forgotten's health will be reduced when Tainted Soul gets hit, instead of death"
		.. "#Tainted Soul can enter the mirror world for free, because of lack of health"
		.. "#Enemies almost always target Tainted Soul and ignore Tainted Forgotten"
		.. "#Tainted Soul has ability to fly"
		.. "",
	},
	[PlayerType.PLAYER_BETHANY_B] = {
		-- icon = "",
		name = "Bethany(Tainted)",
		description = "The Zealot: The revival of her brother made the faith stronger"
		.. "#{{SoulHeart}} Tainted Bethany's health meter is unique in that he cannot gain red heart containers. Any item that grant him a red heart container (including an empty one), adds a Soul Heart instead"
		.. "#Red Hearts are converted to a resource unique to Tainted Bethany called 'Blood Charges' at the rate of one charge per half heart"
		.. "#Blood charges can be consumed to use Tainted Bethany's activated item when the item isn't fully charged, at the rate of one soul charge per empty bar of charge"
		.. "#Any items held by Tainted Bethany that give positive modifiers and multipliers have only 75% of their effect. Familiars and Orbitals also deal only 75% of their usual damage"
		.. "#{{Collectible712}} Unique ability : Lemegeton"
		.. "#"
		.. "",
	},
	[PlayerType.PLAYER_JACOB_B] = {
		-- icon = "",
		name = "Jacob(Tainted)",
		description = "The Deserter: Jacob needs to flee from Esau's Wrath"
		.. "#If Dark Esau damages Tainted Jacob, Tainted Jacob 'dies' and becomes ghostly state with no health"
		.. "#Dark Esau is able to damage enemies as well as Tainted Jacob"
		.. "#While charging at Tainted Jacob, Dark Esau damage enemies which ignores Armor, and inflicts Burning"
		.. "#{{Collectible722}} Unique ability : Anima Sola"
		.. "#{{Blank}} Using Anima Sola when used in a room with no enemies will immediately spawn Dark Esau without exhausting the item's charge"
		.. "#{{Blank}} Anima Sola always affects Dark Esau if he is on screen"
		.. "",
	},
	[PlayerType.PLAYER_JACOB2_B] = {
		-- icon = "",
		name = "Jacob(Tainted)",
		description = "The Deserter: Jacob needs to flee from Esau's Wrath"
		.. "#!!! Currently ghostly state: {{ColorRed}}Tainted Jacob will die from any damage taken{{CR}}"
		.. "#Upon reaching a new floor, Tainted Jacob will return to his living state"
		.. "#If Dark Esau damages Tainted Jacob, Tainted Jacob 'dies' and becomes ghostly state with no health"
		.. "#Dark Esau is able to damage enemies as well as Tainted Jacob"
		.. "#While charging at Tainted Jacob, Dark Esau damage enemies which ignores Armor, and inflicts Burning"
		.. "#{{Collectible722}} Unique ability : Anima Sola"
		.. "#{{Blank}} Using Anima Sola when used in a room with no enemies will immediately spawn Dark Esau without exhausting the item's charge"
		.. "#{{Blank}} Anima Sola always affects Dark Esau if he is on screen"


	},
}

idesc.descriptions[desclang].curses = {
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
		name = "Curse of the Unknown",
		description = ""
		.. "#Removes Isaac's health from the HUD, leaving the player unable to see how many hearts remain of any kind"
		.. "#Health will still be tracked as normal, including Soul/Black/Eternal Hearts, Holy Mantle Shield, and Extra Lives"
		.. "#When Isaac is down to half a heart, it is still marked by urine when entering a room"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_UNKNOWN,
	},
	[LevelCurse.CURSE_OF_THE_CURSED] = {
		icon = "CurseCursed",
		name = "Curse of the Cursed",
		description = "Changes normal doors into cursed doors"
		.. "#Due to mechanism of Cursed doors, Isaac takes damage regardless of flight"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_CURSED,
	},
	[LevelCurse.CURSE_OF_MAZE] = {
		icon = "CurseMaze",
		name = "Curse of the Maze",
		description = "Entering a new room (including teleporting) will occasionally take Isaac to the wrong room"
		.. ", with a screen-shake and sound effect to indicate the jump"
		.. "#Occasionally, discovered rooms can swap contents, without a screen-shake or sound effect"
		.. "",
		seedeffect = SeedEffect.SEED_PERMANENT_CURSE_MAZE,
	},
	[LevelCurse.CURSE_OF_BLIND] = {
		icon = "CurseBlind",
		name = "Curse of the Blind",
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

for playertype, playerdesc in pairs(idesc.descriptions[desclang].playernotes) do
	local desc = playerdesc.description
	EID:addEntity(InvDescEIDType.PLAYER, InvDescEIDVariant.DEFAULT, playertype, playerdesc.name, desc, desclang)
end
for curseid, cursedesc in pairs(idesc.descriptions[desclang].curses) do
	local desc = cursedesc.description
	EID:addEntity(InvDescEIDType.CURSE, InvDescEIDVariant.DEFAULT, curseid, cursedesc.name, desc, desclang)
	EID:AddIconToObject(InvDescEIDType.CURSE, InvDescEIDVariant.DEFAULT, curseid, cursedesc.icon)
end

