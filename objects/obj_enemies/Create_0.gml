/// @description Insert description here
// You can write your code in this editor

depth = 2;

vida = 0;
dano = 0;
vivo = true;

experiencia = 0;

attackCooldown = timer ( 2 )

//começa voando, então é false
no_chao = false;

xspd = 1.5;
yspd = 1.5;

totalSpeed = 2.2;

xTarget = 0;
yTarget = 0;

image_xscale = 2;

drops = [
	{
		obj: obj_Life, chance: global.lifeChance
	}
];