/// @description Eventos do item

yspd += global.gravidade;

#region colisão com o chão
	groundColision(self, obj_chao);
	
	platformColision(self, obj_plataforma);
#endregion

#region movimento e gravidade
y += yspd;
#endregion


















