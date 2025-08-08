/// @description Insert description here
// You can write your code in this editor

if global.paused exit;

#region colisao do projetil
	playerAttackColision(self, obj_corruptBat);
#endregion

#region destroi o projetil quando sai da tela
	objectDestroyer(self);
#endregion

#region move o projétil
	x += xspd;
	y += yspd;
#endregion