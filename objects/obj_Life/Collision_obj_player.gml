/// @description Jogador pegou a vida

//exibe a cura na tela
#region
	var dt = instance_create_layer(x, y - 20, "Instances", obj_damage_text);
	dt.cor = c_green;

	if global.vidaMaxima - global.vida >= global.totalHeal
	{
		dt.texto = "+" + string(global.totalHeal);
	} 
	else 
	{
		dt.texto = "+" + string(global.vidaMaxima - global.vida);
	}
#endregion

//Aplica a cura
#region
	if global.vida < global.vidaMaxima 
	{ 
		global.vida += global.totalHeal;
		
		if global.vida > global.vidaMaxima 
		{ 
			global.vida = global.vidaMaxima; 
		}
	}
#endregion

instance_destroy();


















