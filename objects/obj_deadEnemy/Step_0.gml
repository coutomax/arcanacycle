/// @description Insert description here
// You can write your code in this editor

if sprite_index != deadEnemy.sprite
{
	sprite_index = deadEnemy.sprite;
	yspd = deadEnemy.yspd;
}

#region solta projéteis / fragmentos
	if global.debris.active && isDebrisAvailable && !no_chao
			{
				isDebrisAvailable = false;
				if global.debris.peso > 0 
				{
					for (var i = 1; i <= global.debris.multiplier; i++)
					{
						var debris = instance_create_layer(x, y, "Instances", obj_debris);				
					}
				}
			}
#endregion

#region colisão com o chão
	groundColision(self, obj_chao);
#endregion

#region movimenta sob o efaeito da gravidade
	if !no_chao 
	{
		yspd += global.gravidade;
	}
	y += yspd;
#endregion