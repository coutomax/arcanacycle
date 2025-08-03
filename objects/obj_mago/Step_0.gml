/// @description

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

if global.paused 
{
	xspd = 0;
	yspd = 0;
	exit
}

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
		
		var dx = mouse_x - x;
		var dy = mouse_y - y;
		var dir = point_direction(x, y, mouse_x, mouse_y);

		var fireball = instance_create_layer(x, y, "Instances", obj_fireball);

		fireball.direction = dir;

		fireball.xspd = lengthdir_x(fireball.xspd * global.spdProjetilMultiplicador, dir);
		fireball.yspd = lengthdir_y(fireball.yspd * global.spdProjetilMultiplicador, dir);
		
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
		obj_mago.sprite_index = spr_magoAndandoEsq;
	}
	
	if aReleased || dReleased 
	{
		xspd = 0;
	}

	if aPressed && xColision != -1 && x >= 17 //controle pra evitar sair da tela
	{
		xspd = -2;
		xColision = 0;
		obj_mago.image_xscale = -2;
	}

	if (keyboard_check_pressed(ord("D"))) 
	{
		obj_mago.sprite_index = spr_magoAndandoDir;
	}

	if dPressed && xColision != 1 
	{
		xspd = 2;
		xColision = 0;
		obj_mago.image_xscale = 2;
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
