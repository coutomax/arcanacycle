/// @description Eventos do item

yspd += global.gravidade;

//ground colisions
#region
	groundColision(self, obj_chao);
	
	platformColision(self, obj_plataforma);
#endregion

//movimento e gravidade
#region
y += yspd;
#endregion


















