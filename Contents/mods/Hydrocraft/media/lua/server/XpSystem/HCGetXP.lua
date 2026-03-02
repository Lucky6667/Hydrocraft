require "XpSystem/XpUpdate";

--Get XP Specific

function MakeEphedrin_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Doctor, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function Healdog_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Doctor, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

--Get XP General

function HCCooking_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCCooking_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCCooking_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCCooking_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCCooking_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCDoctor_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Doctor, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCDoctor_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Doctor, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCDoctor_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Doctor, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCDoctor_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Doctor, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCDoctor_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Doctor, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCElectricity_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Electricity, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCElectricity_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Electricity, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCElectricity_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Electricity, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCElectricity_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Electricity, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCElectricity_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Electricity, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFarming_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Farming, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFarming_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Farming, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFarming_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Farming, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFarming_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Farming, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFarming_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Farming, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFishing_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Fishing, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFishing_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Fishing, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFishing_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Fishing, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFishing_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Fishing, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCFishing_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Fishing, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCPlantScavenging_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.PlantScavenging, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCPlantScavenging_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.PlantScavenging, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCPlantScavenging_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.PlantScavenging, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCPlantScavenging_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.PlantScavenging, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCPlantScavenging_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.PlantScavenging, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCMechanics_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCMechanics_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 1);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCMechanics_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCMechanics_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 4);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCMechanics_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 10);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCMechanicsElectricity_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 2);
    player:getXp():AddXP(Perks.Electricity, 2);	
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCMechanicsElectricity_OnGiveMostXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 20);
    player:getXp():AddXP(Perks.Electricity, 20);	
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCMechanicsFarming_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 2);
    player:getXp():AddXP(Perks.Farming, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCWeldingMechanics_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 0.3);
    player:getXp():AddXP(Perks.MetalWelding, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCMechanicsWoodwork_OnGiveMostXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Mechanics, 20);
    player:getXp():AddXP(Perks.Woodwork, 20);	
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCEMW_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Electricity, 2);	
    player:getXp():AddXP(Perks.Mechanics, 2);
    player:getXp():AddXP(Perks.MetalWelding, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCCookingMechanics_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 0.3);
    player:getXp():AddXP(Perks.Mechanics, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCTrapping_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Trapping, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCTrapping_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Trapping, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCTrapping_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Trapping, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCTrapping_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Trapping, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCTrapping_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Trapping, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)
end

function HCWelding_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.MetalWelding, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCWelding_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.MetalWelding, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCWelding_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.MetalWelding, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCWelding_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.MetalWelding, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCWelding_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.MetalWelding, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCWoodwork_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Woodwork, 0.3);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCWoodwork_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Woodwork, 1);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCWoodwork_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Woodwork, 2);
	-- player:getStats():setHunger(player:getStats():getHunger()+0.01)	
end

function HCWoodwork_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Woodwork, 4);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCWoodwork_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Woodwork, 10);
    -- player:getStats():setHunger(player:getStats():getHunger()+0.01)  
end

function HCTailoring_OnGiveBitXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 0.3);
end

function HCTailoring_OnGiveTinyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 1);
end

function HCTailoring_OnGiveXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 2);
end

function HCTailoring_OnGiveMoreXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 4);
end

function HCTailoring_OnGiveManyXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 10);
end