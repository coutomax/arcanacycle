/// @description Insert description here
// You can write your code in this editor

if global.paused { exit; }

event_inherited();

#region Causa dano no player também
	damageColision(self, obj_player);
#endregion

#region move os destroços
	x += xspd;
	y += yspd;
	
	yspd += global.gravidade;
#endregion