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

 //with _inst // projetil
 //   {
 //       if position_meeting(x, y, target)
 //       {
 //           var targetInst = instance_place(x, y, target);
 //           if targetInst != noone
 //           {
 //               if targetInst.vida > 0
 //               {
 //                   targetInst.vida -= global.dano;
	//				var dt = instance_create_layer(x, y - 20, "Instances", obj_damage_text);
	//				dt.cor = c_red;
	//				dt.texto = string(global.dano);
					
 //                   instance_destroy();
 //               }
 //           }
 //       }
 //   }