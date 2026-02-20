require "Shared/luautils"
require "ISUI/ISToolTip"

-- 2. THE CONTEXT MENU FUNCTION
local function HCDigMenu(player, context, worldobjects, test)
    local playerObj = getSpecificPlayer(player);
    local square = nil;

    for i, v in ipairs(worldobjects) do
        square = v:getSquare();
        if square then break end
    end

    if not square then return end

    local props = square:getProperties();

    -- --- VALIDATION CHECKS ---
    -- 1. WATER CHECK
    if props and props:Is(IsoFlagType.water) then return end

    -- 2. OBSTRUCTION CHECK (Trees, Walls)
    local isBlocked = false;
    local objects = square:getObjects();
    for i=0, objects:size()-1 do
        local obj = objects:get(i);
        local status, result = pcall(function()
            if instanceof(obj, "IsoTree") then return true; end
            local sprite = obj:getSprite();
            if sprite and sprite:getName() and string.find(tostring(sprite:getName()), "vegetation_trees") then return true; end
            local objProps = obj:getProperties();
            if objProps and objProps:Is("Solid") then return true; end
            return false;
        end)
        if status and result == true then isBlocked = true; break; end
    end

    if isBlocked then return end

    -- 3. SOIL CHECKS
    local canDig = false;
    if props and props:Is("canBeAgriculture") then canDig = true; end

    if not canDig then
        local floor = square:getFloor();
        if floor and floor:getSprite() and floor:getSprite():getName() then
            local spriteName = tostring(floor:getSprite():getName());
            if spriteName and (string.find(spriteName, "blends_natural") or string.find(spriteName, "floors_exterior_natural")) then
                canDig = true;
            end
        end
    end

    -- 4. PAVEMENT CHECK
    if props and props:Is("solidfloor") then canDig = false; end

    if not canDig then return end

    -- ------------------------
    -- FIND TOOLS
    local inventory = playerObj:getInventory();
    local shovel = nil;
    local primary = playerObj:getPrimaryHandItem();

    if primary and (primary:getType():contains("Shovel") or primary:getType():contains("Spade") or primary:getType():contains("Trowel") or primary:hasTag("Dig")) then
        shovel = primary;
    else
        local items = inventory:getItems();
        for i=0, items:size()-1 do
            local item = items:get(i);
            if item:getType():contains("Shovel") or item:getType():contains("Spade") or item:getType():contains("Trowel") or item:hasTag("Dig") then
                shovel = item;
                break;
            end
        end
    end

    -- --- HELPER FUNCTION ---
    local function doDig(loop, tool)
        local time = 1800;
        if tool then time = 1200; end

        local strLvl = playerObj:getPerkLevel(Perks.Strength) or 0;
        local farmLvl = playerObj:getPerkLevel(Perks.Farming) or 0;
        local forageLvl = playerObj:getPerkLevel(Perks.PlantScavenging) or 0;

        -- Fixed Math Operators here (changed _60 to * 60)
        time = time - (strLvl * 60) - (farmLvl * 60) - (forageLvl * 60);

        if time < 600 then time = 600; end

        if luautils.walkAdj(playerObj, square) then
            -- Equip logic
            if tool then
                if tool:isTwoHandWeapon() then
                    if not (playerObj:getPrimaryHandItem() == tool and playerObj:getSecondaryHandItem() == tool) then
                        ISInventoryPaneContextMenu.equipWeapon(tool, true, true, player);
                    end
                else
                    if not playerObj:isHandItem(tool) then
                        ISInventoryPaneContextMenu.equipWeapon(tool, true, false, player);
                    end
                end
            end
            ISTimedActionQueue.add(ISDigDirtAction:new(playerObj, square, time, loop, tool));
        end
    end

    -- -----------------------
    -- OPTION 1: DIG WITH TOOL
    if shovel then
        local toolOption = context:addOption("Dig for Dirt (" .. shovel:getName() .. ")", worldobjects, nil);
        local subMenuTool = context:getNew(context);
        context:addSubMenu(toolOption, subMenuTool);

        subMenuTool:addOption("Dig", worldobjects, function() doDig(false, shovel) end);
        subMenuTool:addOption("Dig (Continuous)", worldobjects, function() doDig(true, shovel) end);

        if ISToolTip then
            local toolTip = ISToolTip:new();
            toolTip:initialise();
            toolTip:setVisible(false);
            toolTip.description = "Gather dirt using your " .. shovel:getName() .. ". <LINE> <RGB:0,1,0> Faster & Safe. <LINE> <RGB:1,1,1> Chance for Worms, Stones.";
            toolOption.toolTip = toolTip;
        end
    end

    -- OPTION 2: DIG WITH HANDS
    local handOption = context:addOption("Dig for Dirt (Hands)", worldobjects, nil);
    local subMenuHand = context:getNew(context);
    context:addSubMenu(handOption, subMenuHand);

    subMenuHand:addOption("Dig", worldobjects, function() doDig(false, nil) end);
    subMenuHand:addOption("Dig (Continuous)", worldobjects, function() doDig(true, nil) end);

    if ISToolTip then
        local toolTip = ISToolTip:new();
        toolTip:initialise();
        toolTip:setVisible(false);
        toolTip.description = "Gather dirt using your bare hands. <LINE> <RGB:1,0,0> Slow & Risk of injury. <LINE> <RGB:1,1,1> Chance for Worms, Stones.";
        handOption.toolTip = toolTip;
    end
end

Events.OnFillWorldObjectContextMenu.Add(HCDigMenu);
