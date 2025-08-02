/// @description Controlador de eventos

//phase controller
#region
	if global.enemiesAlive == 0 && !global.endPhase
	{
		global.endPhase = true; // alterar estado ao começar outra fase
		global.cardSortControl = true;
		nextPhase.start();
	}
	
	if global.endPhase && nextPhase.is_done()
	{					
		if !global.cardSortControl
		{
			global.paused = true;
			obj_menuManager.updateCardsMenu();
		}
	}
	
nextPhase.update();
#endregion

//spawn enemies
#region
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


















