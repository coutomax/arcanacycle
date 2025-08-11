// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damageColision(_inst, attacker){
    with _inst
    {
        if place_meeting (x, y, attacker)
        {
            var attackerInstance = instance_place(x, y, attacker);
            if attackerInstance != noone
            {
                if (_inst.attackCooldown.is_done() || !attackCooldown.active)
					&& global.vida > 0 && _inst.vivo
					{
						global.vida -= _inst.dano;
						
						var dt = instance_create_layer(_inst.x, _inst.y - 20, "Effects", obj_damage_text);
						dt.cor = c_red;
						dt.texto = string(_inst.dano);
						
						_inst.attackCooldown.start();
					}
					_inst.attackCooldown.update();
            }
        }
		else
		{
			_inst.attackCooldown.update();
		}
    }
}