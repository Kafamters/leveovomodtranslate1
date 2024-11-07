local leveovomod = RegisterMod("leveovomod",1)
local json = require('json')
local game = Game()--方便调用
local ItemID = {
Id1 = Isaac.GetItemIdByName("幸运十字架"),
Id2 = Isaac.GetItemIdByName("红月亮"),
Id3 = Isaac.GetItemIdByName("小虎鲸"),
Id4 = Isaac.GetItemIdByName("时空包裹"),
Id5 = Isaac.GetItemIdByName("甸伊"),
Id6 = Isaac.GetItemIdByName("恶之硫火"),
Id7 = Isaac.GetItemIdByName("大冒险！"),
Id8 = Isaac.GetItemIdByName("粪球"),
Id9 = Isaac.GetItemIdByName("乞丐帮主令牌"),
Id10 = Isaac.GetItemIdByName("可爱宠物"),
Id11 = Isaac.GetItemIdByName("噩梦与美梦"),
Id12 = Isaac.GetItemIdByName("土豆"),
Id13 = Isaac.GetItemIdByName("12"),
Id14 = Isaac.GetItemIdByName("碎裂的R键"),
Id15 = Isaac.GetItemIdByName("保送书"),
Id16 = Isaac.GetItemIdByName("101%"),
Id17 = Isaac.GetItemIdByName("婴儿车"),
Id18 = Isaac.GetItemIdByName("诅咒血红尸的诅咒"),
Id19 = Isaac.GetItemIdByName("色欲"),
Id20 = Isaac.GetItemIdByName("嫉妒"),
Id21 = Isaac.GetItemIdByName("贪婪"),
Id22 = Isaac.GetItemIdByName("愤怒"),
Id23 = Isaac.GetItemIdByName("傲慢"),
Id24 = Isaac.GetItemIdByName("暴食"),
Id25 = Isaac.GetItemIdByName("懒惰"),
Id26 = Isaac.GetItemIdByName("蝗洞"),
Id27 = Isaac.GetItemIdByName("激光透视器"),
Id28 = Isaac.GetItemIdByName("红币"),
Id29 = Isaac.GetItemIdByName("金牛座(改)"),
Id30 = Isaac.GetItemIdByName("美杜莎的眼泪"),
Id31 = Isaac.GetItemIdByName("饰品国王"),
Id32 = Isaac.GetItemIdByName("尸骨"),
Id33 = Isaac.GetItemIdByName("钥匙眼泪"),
Id34 = Isaac.GetItemIdByName("D+1"),
Id35 = Isaac.GetItemIdByName("错误D4"),
Id36 = Isaac.GetItemIdByName("天使D6"),
Id37 = Isaac.GetItemIdByName("恶魔D6"),
Id38 = Isaac.GetItemIdByName("雪雪的头饰"),
--[]
Id39 = Isaac.GetItemIdByName("红心"),
Id40 = Isaac.GetItemIdByName("骨心"),
Id41 = Isaac.GetItemIdByName("黑心"),
Id42 = Isaac.GetItemIdByName("白心"),
Id43 = Isaac.GetItemIdByName("魂心"),
Id44 = Isaac.GetItemIdByName("金心"),
Id45 = Isaac.GetItemIdByName("腐心"),
--[]
Id46 = Isaac.GetItemIdByName("硬币"),
Id47 = Isaac.GetItemIdByName("镍币"),
Id48 = Isaac.GetItemIdByName("铸币"),
Id49 = Isaac.GetItemIdByName("幸运硬币"),
Id50 = Isaac.GetItemIdByName("金硬币"),



}



if  EID then 
    EID:addCollectible(ItemID.Id1,'{{ColorGreen}}↑ + 20 {{Luck}}Luck#{{ColorGreen}}↑ + 4 {{Damage}}Damage#{{ColorGreen}}↑ - 0.3 {{Shotspeed}}Shot Speed#{{ColorGreen}} Get 2 {{SoulHeart}}soul heart{{CR}}','{{ColorGreen}}Lucky Cross{{CR}}','en_us')--第1个道具(被动)
    EID:addCollectible(ItemID.Id2,'{{ColorRed}}Get a {{Card53}} "Ancient Recall" card','{{ColorRed}}Red Moon{{CR}}','en_us')--第2个道具(主动)
    EID:addCollectible(ItemID.Id3,'{{ColorYellow}}!{{CR}} Single Use#{{ColorOrange}}Trigger {{Collectible628}} Death Certificate effect#After use, it spawns a copy of itself#Each new floor will grant a curse#When holding this item, reduce 1 {{Heart}} heart container per floor!!!','{{ColorOrange}}Baby Orca{{CR}}','en_us')--第3个道具(主动)
    EID:addCollectible(ItemID.Id4,'Get 4 random items#Get a {{Card64}}"VIII-Justice?" card#{{ColorYellow}}One time use!{{CR}}#Get some basic resources#The {{Card64}} "VIII - Justice?" card does not require an extra key','Space-time Package','en_us')--第4个道具(主动)
    EID:addCollectible(ItemID.Id5,'Using cards or pills trigger all dice effects and grants 2 random items','{{ColorGray}}Eden{{CR}}','en_us')--第5个道具(被动)
    EID:addCollectible(ItemID.Id6,'Using a pill will shoot out a massive brimstone laser#Entering a new room increase range, and tears will gain a homing effect for the current room','{{ColorRed}}Evil Brimstone{{CR}}','en_us')--第6个道具(被动)
    EID:addCollectible(ItemID.Id7,"Displays the locations and icons of all rooms except for the super secret room. Upon entering a new room, gain the effect equivalent to {{Collectible175}} Dad's Key #Upon entering the next floor, additionally gain {{Card83}} Cain's Soul Stone",'Great adventure!','en_us')--第7个道具(被动)
    EID:addCollectible(ItemID.Id8,'At the beginning of each floor, 2 {{SoulHeart}} soul hearts are spawns, and a whole room fills with poops.#Using pills will flush away non-boss enemies','Poop ball','en_us')--第8个道具(被动)
    EID:addCollectible(ItemID.Id9,'When holding this item, generate all beggars at the start of each floor#After use, spawn 2 Golden Penny',"Beggars' Guild Token",'en_us')--第9个道具(主动)
    EID:addCollectible(ItemID.Id10,'Entering a new room, spawn a friendly Baby Plum#{{Collectible565}} Get 3 Blood Puppy','Cute Pet','en_us')--第10个(被动)
    EID:addCollectible(ItemID.Id11,'Spawn 2 random items#After use, duplicate itself and add to the pocket active#Each new room has a Lamb when holding this item#When holding this item,the summoned lamb is enhanced#Does not affect the lambs in the Dark Room','Nightmares and Sweet Dreams','en_us')--第11个(主动)
    EID:addCollectible(ItemID.Id12,'↑ + 5{{Luck}}Luck#Damage{{Damage}}×1.5#↑ - 0.3{{Shotspeed}}Shotspeed#↑ +3 Health#↑ + 5{{Damage}}Damage','Potato','en_us')--第12个(被动)
    EID:addCollectible(ItemID.Id13,'Enterin a new room, remove this item and give all 12 zodiac items (gives Taurus(Modified))','12','en_us')--第13个(被动)
    EID:addCollectible(ItemID.Id14,'The effect is the same as {{Collectible636}} R key#After use, remove all of your items but keep a maximum of 4 items#This item is fixed to spawn on the 8th floor#{{ColorYellow}}One-time use!{{CR}}','Broken R key','en_us')
    EID:addCollectible(ItemID.Id15,"Makes player invincible for 120 seconds(can be stacked)#Create an explosion at the player's position, dealing damage to nearby enemies#Generate 1 item from the current room's item pool#Lose 1 heart container; if the character has no heart containers, instead lose 2 soul hearts#Get {{BrokenHeart}}1 broken heart#While holding this item entering a new floor spawn Confessional",'Recommendation Letter','en_us')
    EID:addCollectible(ItemID.Id16,'{{ColorYellow}}!{{CR}} Single Use#Sexdecuples(x16) all the item pedestals and pickups in the room','101%','en_us')
    EID:addCollectible(ItemID.Id17,'Entering a new floor, give 1 familiar#Get an umbilical cord baby every time you enter a new room#Entering a new floor without trinket get a Blood Clot#Entering a new floor with trinket will consume it','Stroller','en_us')
    EID:addCollectible(ItemID.Id18,'Entering a new room, spawn 5 Cursed Globin','The Curse of the Cursed Globin','en_us')
    EID:addCollectible(ItemID.Id19,'Entering a new room, player takes damage, spawn 2 {{Heart}} hearts and {{Coin}} coin, weaken enemies#Damage {{Damage}} × 0.10 (not stackable)#Luck {{Luck}} -520#Shot speed {{Shotspeed}} ↑ + 5.20','Lust','en_us')
    EID:addCollectible(ItemID.Id20,'Entering a new floor, remove all items, keeping a maximum of 2 items','Envy','en_us')
    EID:addCollectible(ItemID.Id21,"Entering a new room, player takes damage and spawn some coins#Entering a new room consume up to 40 coins and increase damage#Obtain some of the shopkeeper's items#Damage{{Damage}} × 0.1",'Greed','en_us')
    EID:addCollectible(ItemID.Id22,'Entering a new room, spawn 18 troll bombs','Wrath','en_us')
    EID:addCollectible(ItemID.Id23,'On each floor, spawn 1 item, get {{BrokenHeart}}1 broken heart and {{BlackHeart}}3 black hearts#Entering new room, {{Heart}}heart containers become 3 times {{SoulHeart}}soul heart and {{BlackHeart}}black hearts pops#Entering a new room will increase your {{SoulHeart}}soul heart#Holding this item makes the boss rewards to devil deal','Pride','en_us')
    EID:addCollectible(ItemID.Id24,'Entering a new room, consume 5 random pills#Entering a new floor, consume 15 random pills','Gluttony','en_us')
    EID:addCollectible(ItemID.Id25,"After obtaining, start teleporting to the Boss room on each floor, starting from the next level#Change pickups in the new room into a blue flies or blue spider#Because I don't want to move!",'Sloth','en_us')
    EID:addCollectible(ItemID.Id26,'Entering a new room with items pedestal inside, consumes all item pedestals and spawns a lotus flys#On use consumes all pedestal items in the room, spawn 2 random items and shouts#↑ Passive items grant stat ups#Active items: Their effects activate with every future use of Lotus Hole#After entering new floor gain 15 lotus flys','Lotus Hole','en_us')
    EID:addCollectible(ItemID.Id27,'After changing room get {{Collectible76}}X-Ray Vision and {{Collectible395}}Tech X#Highlights tinted rocks!','Laser Perspective Device','en_us')
    EID:addCollectible(ItemID.Id28,'25% chance to quadruple all items,pickups and chest in the room and spawn {{Coin}} 16 pennies#{{Coin}} 50% chance to remove items / pickups in room and spawn 2 coins#{{Coin}} 25% chance to remove items / pickups in room and spawn 1 coins#{{ColorYellow}}Do you dear to bet?！{{CR}}','Red Envelope','en_us')
    EID:addCollectible(ItemID.Id29,'Entering a new room, shouts aggressively and fire several beams of holy light','Taurus (Modified)','en_us')
    EID:addCollectible(ItemID.Id30,"After killing an enemy, petrify all enemies in the room for 0.5 seconds and slow all enemies for 3 seconds","Medusa's Tears",'en_us')
    EID:addCollectible(ItemID.Id31,'Taking damage has %100 chance to consume held trinket','Trinket King','en_us')
    EID:addCollectible(ItemID.Id32,'60% chance to generate bone heart when damaged','Skeleton','en_us')
    EID:addCollectible(ItemID.Id33,'Tears turn into keys#Can open locks.#Can break roks','Key Tears','en_us')
    EID:addCollectible(ItemID.Id34,'Rerolls all items in the room by increasing their internal ID by one','D+1','en_us')
    EID:addCollectible(ItemID.Id35,"{{ColorYellow}}!{{CR}} Single Use！#Turns all items to glitched itmes#Glitched items cannot be glitched again#If player doesn't have any items, give 1 glitched item",'Error D4','en_us')
    EID:addCollectible(ItemID.Id36,'Rerolls pedestal items to Angel Room items',"Angel's D6",'en_us')
    EID:addCollectible(ItemID.Id37,'Rerolls pedestal items to Devil Room items',"Devil's D6",'en_us')
    EID:addCollectible(ItemID.Id38,"↑ + 2 {{Luck}} Luck # ↑ + 2 {{Damage}} Damage # ↓ - 0.2 {{Shotspeed}} Shot Speed #Spawn angel room item at the start of each floor #Gain 1 {{BrokenHeart}} Broken Heart each floor #50% chance to gain 1 {{EternalHeart}} Eternal Heart when hurt","Xuexue headdress",'en_us')
    EID:addCollectible(ItemID.Id39,'Press'.. EID.ButtonToIconMap[ButtonAction.ACTION_DROP]..'to switch'..
                                    '#Red Heart: Heal one{{Heart}}'..
                                    '#Eternal Heart: Get one{{EternalHeart}}'..
                                    '#Black Heart: Get one{{BlackHeart}}' ..                                 
                                    '#Bone Heart：Get one{{BoneHeart}}'..
                                    '#Rotten Heart：Get one{{RottenHeart}}'..
                                    '#Soul Heart：Get one{{SoulHeart}}'..
                                    '#Gold Heart：Get one{{GoldenHeart}}',
                                    'Red Heart',
                                    'en_us')
    EID:addCollectible(ItemID.Id46,'Press'.. EID.ButtonToIconMap[ButtonAction.ACTION_DROP]..'to switch'..
                                    '#Penny：Get one{{Coin}}'..
                                    '#Nickel：Get one{{Crafting9}}'..
                                    '#Dime: Get one{{Crafting10}}'..
                                    '#Lucky Penny: Get one{{Crafting11}}'..
                                    '#Golden Penny: Get one{{Crafting26}}',
                                    'Coin',
                                    'en_us')
end





---------------------------------------------
--        ID Generation                    --
-- based on the way EID handles Spindown,  --
-- and inverted to go the other way.       --
---------------------------------------------
local function getSpinupResult(collectibleID)
	if collectibleID <= 0 or collectibleID > 4294960000 then return 0 end
	local newID = collectibleID
	local attempts = 0
	repeat
		newID = newID + 1
		attempts = attempts + 1

        --if it's dad's note, skip it
        if newID == 668 then newID = newID + 1 end
	until (EID.itemConfig:GetCollectible(newID) and not Isaac.GetItemConfig():GetCollectible(newID).Hidden == true) or attempts > 10
	return newID
end

---------------------------------------------
--        UI Fuckery                       --
-- ~this~ was mostly borrowed from         --
-- FiendFolio's Azurite Spindown and       --
-- tweaked to get it working.              --
---------------------------------------------
local function TabCallback(descObj)
	if EID.TabPreviewID == 0 then
        return descObj
    end
	EID.TabDescThisFrame = true
	EID.inModifierPreview = true
	local descEntry = EID:getDescriptionObj(5, 100, EID.TabPreviewID)
	EID.inModifierPreview = false
	descEntry.Entity = descObj.Entity
	EID.TabPreviewID = 0
	return descEntry
end

local function TabConditions(descObj)
    if descObj.ObjType == 5 and descObj.ObjVariant == 100 and EID:PlayersActionPressed(EID.Config["BagOfCraftingToggleKey"]) and not EID.inModifierPreview then
        local numPlayers = Game():GetNumPlayers()
        for i = 0, numPlayers - 1 do
            if Isaac.GetPlayer(i):HasCollectible(ItemID.Id34) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(ItemID.Id34)]) then
                return true
            end
        end
    end
	EID.TabPreviewID = 0
	return false
end

local function spinupModifierCondition(descObj)
    if descObj.ObjType == 5 and descObj.ObjVariant == 100 then
        local numPlayers = Game():GetNumPlayers()
        for i = 0, numPlayers - 1 do
            if Isaac.GetPlayer(i):HasCollectible(ItemID.Id34) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(ItemID.Id34)]) then
                return true
            end
        end
    end
end

local function SpinupModifierCallback(descObj)
    local playerID, icon, hasCarBattery
    local numPlayers = Game():GetNumPlayers()

    -- items check
    for i = 0, numPlayers - 1 do
        if Isaac.GetPlayer(i):HasCollectible(ItemID.Id34) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(ItemID.Id34)]) then
            playerID = i
            icon = "#{{Collectible" .. ItemID.Id34 .. "}} :"
            break
        end
    end
    if playerID then
        EID:appendToDescription(descObj, icon)
        local refID = descObj.ObjSubType
        if refID == 668 then EID:appendToDescription(descObj, "No Effect") return descObj end
        hasCarBattery = Isaac.GetPlayer(playerID):HasCollectible(CollectibleType.COLLECTIBLE_CAR_BATTERY)
        local firstID = 0
        for i = 1,EID.Config["SpindownDiceResults"] do
            local spinnedID = getSpinupResult(refID)
            if hasCarBattery then
                refID = spinnedID
                spinnedID = getSpinupResult(refID)
            end
            refID = spinnedID

            if refID < 4294960000 then
                if EID.itemConfig:GetCollectible(refID) == nil then EID:appendToDescription(descObj, "Loops back to {{Collectible1}}") break
                else
                    if i == 1 then firstID = refID end
                    EID:appendToDescription(descObj, "{{Collectible"..refID.."}}")
                    --if EID.itemUnlockStates[refID] == false then EID:appendToDescription(descObj, "?") end
                    if EID.Config["SpindownDiceDisplayID"] then EID:appendToDescription(descObj, "/".. refID) end
                    if EID.Config["SpindownDiceDisplayName"] then EID:appendToDescription(descObj, "/".. EID:getObjectName(5, 100, refID))
                        if i ~= EID.Config["SpindownDiceResults"] then EID:appendToDescription(descObj, "#{{Blank}}") end
                    end
                    if i ~= EID.Config["SpindownDiceResults"] then EID:appendToDescription(descObj, " ->") end
                end
            end
        end
        if hasCarBattery then EID:appendToDescription(descObj, " (Results with {{Collectible356}})") end
        if firstID ~= 0 and EID.TabPreviewID == 0 then
            EID.TabPreviewID = firstID
            if not EID.inModifierPreview then EID:appendToDescription(descObj, "#{{Blank}} " .. EID:getDescriptionEntry("FlipItemToggleInfo")) end
        end
        return descObj
    end
end

if EID and EID.Config["SpindownDiceResults"] > 0 then
    EID:addDescriptionModifier("Spinup Modifier", spinupModifierCondition, SpinupModifierCallback)
    EID:addDescriptionModifier("Spinup Tab Previews", TabConditions, TabCallback)
end
