/// @description

if global.paused 
{
	xspd = 0;
	yspd = 0;
	exit
}

//inputs
aPressed = keyboard_check( ord("A") );
dPressed = keyboard_check( ord("D") );
jumpKeyHold = keyboard_check( vk_space );

aReleased = keyboard_check_released( ord("A") );
dReleased = keyboard_check_released( ord("D") );

jumpKeyPressed = keyboard_check_pressed( vk_space );
sPressed = keyboard_check_pressed( ord("S") );

mouseClick = mouse_check_button( mb_left);

//aplica gravidade ao yspd
yspd += global.gravidade;

#region teleport colision
	
	teleportColision(self, obj_portal);
	
#endregion

#region morrer
	if global.vida <= 0
	{
		global.vida = 0;
		global.paused = true;
		obj_menuManager.updatePause();
	}
#endregion

#region ataque
	if mouseClick && attackCooldown.is_done()
	{
		var dir = point_direction(x, y, mouse_x, mouse_y);
		var spread = 5
		var centralizador = global.doubleProjectiles.peso == 0 ?
			0 : 7.5 + ((global.doubleProjectiles.peso - 1) * 5);
		
		if global.doubleProjectiles.peso > 0
		{
			//12.5 de peso centralizou 4 projéteis
			// 7 de peso centralizou 2 projeteis
			for (var i = 1; i <= global.doubleProjectiles.multiplier; i++)
			{				
				var atk = global.bubbles ? 
				instance_create_layer(x, y, "Instances", obj_bubble)
				: instance_create_layer(x, y, "Instances", obj_fireball);
			
				var ajuste = (dir - (i * spread))  + centralizador
			
				atk.xspd = lengthdir_x(atk.xspd * global.spdProjetilMultiplicador, ajuste);
				atk.yspd = lengthdir_y(atk.yspd * global.spdProjetilMultiplicador, ajuste);
				atk.direction = ajuste;
			}
		}
		else
		{
			var atk = global.bubbles ? 
			instance_create_layer(x, y, "Instances", obj_bubble)
			: instance_create_layer(x, y, "Instances", obj_fireball);
	
			atk.xspd = lengthdir_x(atk.xspd * global.spdProjetilMultiplicador, dir);
			atk.yspd = lengthdir_y(atk.yspd * global.spdProjetilMultiplicador, dir);
			atk.direction = dir;
		}
		
		attackCooldown.start();
	}
	
	attackCooldown.update();
#endregion

#region pulo
	if place_meeting(x, y + 1, obj_chao) || place_meeting(x, y + 1, obj_plataforma) 
	
	{
		jumpCount = 0;
	}
	else 
	{
		if jumpCount == 0
		{
			jumpCount = 1;	
		}
	}

	if jumpKeyPressed && jumpCount < jumpMax
	{
		jumpCount++;

		jumpTimer = jumpHoldFrames;
	}
	
	if !jumpKeyHold { jumpTimer = 0; }
	
	if jumpTimer > 0
	{
		
		yspd = jumpSpd;
		
		jumpTimer--;
	}
	
	if yspd > global.maxGravidade { yspd = global.maxGravidade; }
#endregion

#region colisões
	// x colision - parede
	if place_meeting(x + xspd, y, obj_parede)
	{
		var _pixelCheck = sign(xspd);
		while !place_meeting(x + _pixelCheck, y + yspd, obj_parede) 
		{
			x += _pixelCheck;
		}
		xColision = _pixelCheck;
		xspd = 0;
	}
	
	//y colision - chao	
	groundColision(self, obj_chao)

	//y colision - plataforma
	platformColision(self, obj_plataforma)
#endregion

#region Movimento Geral
	if (keyboard_check_pressed(ord("A"))) {
		obj_player.sprite_index = spr_magoAndandoEsq;
	}
	
	if aReleased || dReleased 
	{
		xspd = 0;
	}

	if aPressed && xColision != -1 && x >= 17 //controle pra evitar sair da tela
	{
		xspd = -2;
		xColision = 0;
		obj_player.image_xscale = -2;
	}

	if (keyboard_check_pressed(ord("D"))) 
	{
		obj_player.sprite_index = spr_magoAndandoDir;
	}

	if dPressed && xColision != 1 
	{
		xspd = 2;
		xColision = 0;
		obj_player.image_xscale = 2;
	}

	if sPressed && !no_chao
	{
		no_chao = true;
		yspd = 2;
	}
#endregion
 
#region Aplicar velocidade
	x += xspd;
	y += yspd;
#endregion
