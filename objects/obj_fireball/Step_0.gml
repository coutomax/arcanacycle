/// @description Insert description here
// You can write your code in this editor

if global.paused exit;

//colisao do projetil
#region
	playerAttackColision(self, obj_corruptBat);
#endregion

//destroi o projetil quando sai da tela
#region
	objectDestroyer(self);
#endregion

//move o projétil
#region
	x += xspd;
	y += yspd;
#endregion
















