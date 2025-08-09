/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if global.paused exit;

#region colisao do projetil
	playerAttackColision(self, obj_corruptBat);
#endregion

#region destroi o projetil quando sai da tela
	objectDestroyer(self);
#endregion

#region destroi a bolha quando passam 10 segundos
	if destroyTimer.is_done()
	{
		instance_destroy();
	}
	destroyTimer.update();
#endregion

#region efeito de flutuação das bolhas
	var dir = random(360);
	var spd = random_range(2, 5);
	
	if !flutuando
	{
		if abs(xspd) < velocidadeMinima && abs(yspd) < velocidadeMinima
		{
			xspd = 0;
			yspd = 0;
			baseY = y;
			flutuando = true;
		}
	}
	else
	{
		tempoFlutuacao += velocidadeFlutuacao;
		y = baseY + sin(tempoFlutuacao) * amplitude;
	}
#endregion

#region move o projétil	
	xspd *= friccao;
	yspd *= friccao;
	
	x += xspd;
	y += yspd;
#endregion