/// @description Insert description here
// You can write your code in this editor

if durationTimer.is_done() 
{ 
	instance_destroy(); 
	global.portalCount = 0;
	global.hasPortal = false;
	global.isTeleportable = true;
}

durationTimer.update();