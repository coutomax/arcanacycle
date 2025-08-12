/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !vivo
{	
	var deadEnemy = instance_create_layer(x, y, "Instances", obj_deadEnemy);
	deadEnemy.deadEnemy = global.deadEnemies[0];
	instance_destroy();
}