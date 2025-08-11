/// @description Insert description here
// You can write your code in this editor

depth = 2;
image_xscale = 2;

no_chao = false;
yspd = 0;

enemyId = 0;

with obj_corruptBat
{
	if !vivo && no_chao
	{
		instance_deactivate_object(self);
	}
}