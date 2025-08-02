/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed( vk_escape )
{
	if !global.endPhase
	{
		global.paused = !global.paused;
		updatePause();
	}
}