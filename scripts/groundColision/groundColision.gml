function groundColision(_inst, collider){
    with _inst
    {
        if place_meeting(x, y + yspd, collider)
        {
            var _pixelCheck = sign(yspd);
            while !place_meeting( x + xspd, y + _pixelCheck, collider)
            {
                y += _pixelCheck
            }
            no_chao = true;
            yspd = 0;
        }
    }
}   