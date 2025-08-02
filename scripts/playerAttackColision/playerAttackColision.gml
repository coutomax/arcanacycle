// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerAttackColision(_inst, target){
    with _inst // projetil
    {
        if position_meeting(x, y, target)
        {
            var targetInst = instance_place(x, y, target);
            if targetInst != noone
            {
                if targetInst.vida > 0
                {
                    targetInst.vida -= global.dano;
					var dt = instance_create_layer(x, y - 20, "Instances", obj_damage_text);
					dt.cor = c_red;
					dt.texto = string(global.dano);
					
                    instance_destroy();
                }
            }
        }
    }
}