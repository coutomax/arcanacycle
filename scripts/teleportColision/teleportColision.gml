// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function teleportColision(_inst, portal){
	with _inst //player
	{
		if position_meeting(x, y, portal)
		{
			var instPortal = instance_place(x, y, portal);
			
			var portalA = instance_find(obj_portal, 0);
			var portalB = instance_find(obj_portal, 1);
			
			var posX = -10;
			var posY = -10;
			
			if instPortal != noone
			{				
				if portalA.tag == instPortal.tag
				{
					posX = portalB.x;
					posY = portalB.y;
				}
				
				if portalB.tag == instPortal.tag
				{
					posX = portalA.x;
					posY = portalA.y;
				}
				
				if global.isTeleportable
				{
					global.isTeleportable = false;
					_inst.x = posX;
					_inst.y = posY;
				}
			}
		}
	}
}