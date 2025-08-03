/// @description Insert description here
// You can write your code in this editor

#region function card-select
	updateCardsMenu = function ()
	{
		layer_set_visible("CardsMenu", global.endPhase);
		if !global.endPhase { instance_activate_object(obj_cardButton); }
	}
#endregion

#region function pause
	updatePause = function ()
	{	
		layer_set_visible("PauseLayer", global.paused);
	}
#endregion

updatePause();