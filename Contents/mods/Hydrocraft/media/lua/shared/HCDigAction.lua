require "TimedActions/ISBaseTimedAction"

ISDigDirtAction = ISBaseTimedAction:derive("ISDigDirtAction");

function ISDigDirtAction:isValid()
    if self.tool and not self.character:getInventory():contains(self.tool) then
        return false;
    end
    return self.square ~= nil;
end

function ISDigDirtAction:waitToStart()
    self.character:faceLocation(self.square:getX(), self.square:getY());
    return self.character:shouldBeTurning();
end

function ISDigDirtAction:update()
    self.character:faceLocation(self.square:getX(), self.square:getY());
    self.character:setMetabolicTarget(Metabolics.HeavyWork);
end

function ISDigDirtAction:start()
    if self.tool then
        self:setOverrideHandModels(self.tool, nil);
        self.character:playSound("DigFurrowWithShovel");
        if self.tool:isTwoHandWeapon() then
            self:setActionAnim("DigShovel");
        else
            self:setActionAnim("Dig");
        end
    else
        self.character:playSound("DigFurrowWithHands");
        self:setActionAnim("Loot");
        self:setAnimVariable("LootPosition", "Low");
    end
    self.character:reportEvent("EventLootItem");
end

function ISDigDirtAction:stop()
    ISBaseTimedAction.stop(self);
end

function ISDigDirtAction:perform()
    local gotInjured = false;
    local inv = self.character:getInventory();

    -- 1. Give the Dirt (Guaranteed)
    inv:AddItem("Hydrocraft.HCDirt");

    -- 2. LOOT TABLE (Calls HCSiftDirt)
    local lootChance = 4; -- Default 1 in 4 (Hands)
    if self.tool then
        lootChance = 3; -- 1 in 3 (Tool)
    end

    if ZombRand(lootChance) == 0 then
        if type(HCSiftDirt) == "function" then
            HCSiftDirt(nil, nil, self.character);
        end
    end

    -- 3. Tool Condition & Fatigue Logic
    if self.tool then
        -- Tool logic remains the same
        if ZombRand(30) == 0 then
            self.tool:setCondition(self.tool:getCondition() - 1);
        end
        self.character:getStats():setFatigue(self.character:getStats():getFatigue() + 0.01);
    else
        -- -------------------------------------------------
        -- HANDS PROTECTION LOGIC
        -- -------------------------------------------------
        local gloves = self.character:getClothingItem_Hands();

        if gloves then
            -- WEARING GLOVES: Damage the gloves instead of the player
            -- Chance to damage gloves (1 in 10 chance per dig)
            if ZombRand(10) == 0 then
                gloves:setCondition(gloves:getCondition() - 1);

                -- Check if gloves are destroyed
                if gloves:getCondition() <= 0 then
                    self.character:setWornItem(gloves:getBodyLocation(), nil);
                    gloves:getContainer():Remove(gloves);
                    if HaloTextHelper then
                        HaloTextHelper.addText(self.character, "Gloves Ruined!", 255, 50, 50);
                    end
                    self.character:playSound("ClothesRip");
                end
            end
        else
            -- NO GLOVES: Original Injury Logic
            if ZombRand(5) == 0 then
                local handPart = nil;
                if ZombRand(2) == 0 then
                    handPart = self.character:getBodyDamage():getBodyPart(BodyPartType.Hand_R);
                else
                    handPart = self.character:getBodyDamage():getBodyPart(BodyPartType.Hand_L);
                end

                if handPart and not handPart:scratched() then
                    handPart:setScratched(true, true);
                    if HaloTextHelper then
                        HaloTextHelper.addText(self.character, "Scratched Hand", 255, 50, 50);
                    end
                    self.character:playSound("ZombieScratch");
                    gotInjured = true;
                end
            end
        end

        self.character:getStats():setFatigue(self.character:getStats():getFatigue() + 0.03);
    end

    ISBaseTimedAction.perform(self);

    -- 4. Continuous Logic
    if self.loop then
        if self.tool and self.tool:getCondition() <= 0 then
            if HaloTextHelper then HaloTextHelper.addText(self.character, "Tool Broke!", 255, 50, 50); end
            return;
        end

        if not self.tool and gotInjured then
            if HaloTextHelper then HaloTextHelper.addText(self.character, "Too painful to continue!", 255, 255, 255); end
            return;
        end

        local action = ISDigDirtAction:new(self.character, self.square, self.maxTime, self.loop, self.tool);
        ISTimedActionQueue.add(action);
    end
end

function ISDigDirtAction:new(character, square, time, loop, tool)
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    o.character = character;
    o.square = square;
    o.stopOnWalk = true;
    o.stopOnRun = true;
    o.maxTime = time;
    o.loop = loop;
    o.tool = tool;
    return o;
end
