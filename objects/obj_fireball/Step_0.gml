/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//direction += turnSpeed * sign(angle_difference(point_direction(x, y, tx, ty), direction));
//image_angle = direction;

#region move o projétil // segue o inimigo
	var target = instance_nearest(x, y, obj_enemy);

	if target != noone && instance_exists(target)
	{
		var tx = target.x;
		var ty = target.y;
		
		
		
	} 
	
	if !instance_exists(target) || target == noone
	{
		speed = spd;
	}
#endregion
