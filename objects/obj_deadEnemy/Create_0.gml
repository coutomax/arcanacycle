/// @description Insert description here
// You can write your code in this editor

depth = 2;
image_xscale = 2;

isDebrisAvailable = true;
no_chao = false;
yspd = 0;
xspd = 0;

deadEnemy = {
			id: -1,
			tag: "",
			xspd: 0,
			yspd: 0,
			vida: 0,
			sprite: spr_blankCard
		};

with obj_corruptBat
{
	if !vivo && no_chao
	{
		instance_deactivate_object(self);
	}
}