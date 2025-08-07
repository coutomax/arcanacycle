/// @description 

if global.paused exit;

#region causa dano
	damageColision(self, obj_player) 	
#endregion

#region morrer

	if !vivo
	{
		sprite_index = spr_corruptBat_dead;
        xspd = 0;
		y += yspd;
        yspd += global.gravidade;	
		image_angle = 0;
	}

    if vida <= 0 && vivo
    {
		global.experience += experiencia;
		global.enemiesAlive--;
		global.enemiesKilled++;
		vivo = false;
		
		attackCooldown.reset();
		
		//rola a chance de drop
		var sorte = global.luck;
		
		for(var i = 0; i < array_length(drops); i++)
		{
			
			var drop = drops[i];
			
			var finalChance = drop.chance + sorte;
			
			if random(100) < finalChance
			{
				var dx = x + irandom_range(-8, 8);
				var dy = y + irandom_range(-8, 8);
				
				instance_create_layer(dx, dy, "Instances", drop.obj);
			}
			
		}
    }
#endregion

#region colisoes
	groundColision(self, obj_chao);
#endregion

#region segue o personagem
	xTarget = obj_player.x;
	yTarget = obj_player.y;

	if vida > 0 
	{
		var dir = point_direction(x, y, xTarget, yTarget);

		mp_potential_step(xTarget, yTarget, totalSpeed, false);

		image_angle = dir - 270;
	}
#endregion
















