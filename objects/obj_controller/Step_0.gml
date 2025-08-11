/// @description Controlador de eventos

#region ativa/desativa debugger
if keyboard_check_released( ord("P") )
{
	debugger = !debugger;
}
#endregion

#region phase controller
	if global.enemiesAlive == 0 && !global.endPhase
	{
		global.endPhase = true; // alterar estado ao começar outra fase
		global.cardSortControl = true;
		nextPhase.start();
	}
	
	if global.endPhase && nextPhase.is_done()
	{				
		if global.cardSortControl
		{
			global.paused = true;
			
			if global.sortCount == 3 
			{
				obj_menuManager.updateCardsMenu();
			}
		}
	}
	
	nextPhase.update();
#endregion

#region spawna os inimigos
	if global.totalEnemies < global.enemiesByStage && !global.paused
	{
		if spawnTimer.is_done() 
		{
			var spawn_x = random_range(0,1024);
			var spawn_y = -32;
			
			var newMob = instance_create_layer(spawn_x, spawn_y, "Instances", obj_corruptBat);
			
			global.totalEnemies++;
					
			spawnTimer.current = spawnTimer.duration;
			spawnTimer.active = true;
		}
	}
	
	spawnTimer.update();
#endregion

#region controlador de portais
if global.portals
{
	if !global.hasPortal
	{
		global.hasPortal = true;
		spawnPortals.start();
	}
	
	if spawnPortals.is_done() && global.portalCount == 0
	{
		var portalAX = irandom_range(0, 500);
		var portalAY = irandom_range(560, 945);
		var portalBX = irandom_range(550, 1000);
		var portalBY = irandom_range(560, 945);
		
		portalA = instance_create_layer(portalAX, portalAY, "Instances", obj_portal);
		portalA.tag = "portalA";
		portalB = instance_create_layer(portalBX, portalBY, "Instances", obj_portal);
		portalB.tag = "portalB";
				
		global.portalCount = 2;
	}
}
spawnPortals.update();
#endregion















