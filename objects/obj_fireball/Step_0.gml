/// @description Insert description here
// You can write your code in this editor

if global.paused exit;

// Inherit the parent event
event_inherited();
	
#region move o projétil // segue o inimigo
	if global.guided
	{
		var menorDistancia = 9999;
		var getId = noone;
		var lastDirection = direction;
	
		if !instance_exists(target)
		{
			with obj_enemy
			{
				var distancia = point_distance(x, y,other.x, other.y);
			
				if distancia < menorDistancia && vivo
				{
					menorDistancia = distancia;
					getId = id;
				}
			}
		
			target = getId;
		}

		//verificar se o target não foi substituído	ou destruido
		if !instance_exists(target) || !target.vivo
		{ 
			x += lengthdir_x(8, lastDirection);
			y += lengthdir_y(8, lastDirection);	
		}

		if instance_exists(target) && target.vivo
		{	
			var tx = target.x;
			var ty = target.y;
	
			var distancia = point_distance(x, y, tx, ty);
			var dir = point_direction(x, y, tx, ty);
		
			//ajusta a direção e rotaciona o projetil em direção ao alvo
			var ajuste = lerp(direction, dir, 1.2); 
		
			lastDirection = ajuste;
		
			x += lengthdir_x(8, ajuste);
			y += lengthdir_y(8, ajuste);	
		}
	}
	else
	{
		x += xspd;
		y += yspd;
	}
#endregion
