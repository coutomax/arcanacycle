// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function objectDestroyer(_inst){	
	with _inst
	{
		if x < 0 || x > room_width || y < 0 || y > room_height
		{
			instance_destroy(_inst);
		}
	}
}