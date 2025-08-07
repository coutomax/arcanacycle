/// @description seleciona a carta escolhida
if global.endPhase && global.isShowingCards
{
	switch carta.id
		{
			case 0:
				global.bubbles = true;
				global.dano = 8;
			break;
			case 1:
			break;
			case 2:
				global.lifeBuff.count++;
				global.lifeBuff.multiplier += 0.2;
				global.vidaMaxima = floor(100 * global.lifeBuff.multiplier); // remove casas após a virgula
			break;
			case 3:
				global.portals = true;
			break;
			case 4:
				global.doubleProjectiles.active = true;
				global.doubleProjectiles.count++;
				if global.doubleProjectiles.peso == 0
				{
					global.doubleProjectiles.peso += 1;
				}
				else
				{
					global.doubleProjectiles.peso *= 2;
				}
				global.doubleProjectiles.multiplier *= 2;
			break;
			case 5:
			break;
			case 6: // buff de cura (ainda não foi criado)
				global.healBuff.count++;
				global.healBuff.multiplier += .2;
				global.totalHeal = global.healBuff.heal * global.healBuff.multiplier;
			break;
		}
	
		//reseta a fase
		resetPhase();
}