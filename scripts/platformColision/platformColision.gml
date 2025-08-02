// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function platformColision(_inst, collider){
    with _inst
    {
        var plataforma = instance_place(x + xspd, y + yspd, obj_plataforma);
 
		if plataforma != noone
		{
			if place_meeting(x, y + yspd, plataforma) && yspd > 0 && bbox_bottom <= plataforma.bbox_top + 1 //colide com a parte de cima da plataforma e para de cair
			{
				var _pixelCheck = sign(yspd);
				while !place_meeting(x, y + _pixelCheck, plataforma)
				{
					y += _pixelCheck;
				}
				no_chao = false;
				yspd = 0;
			}
		}
    }
}