/// @description Insert description here
// You can write your code in this editor

image_xscale = .55;

xspd = irandom_range(-5, 5);
yspd = irandom_range(-7, -3);

//Override para reuso do script damageColision
dano = 10;
vivo = true;

attackCooldown = timer( global.atkSpeed );
attackCooldown.active = false;