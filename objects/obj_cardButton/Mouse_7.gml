/// @description seleciona a carta escolhida

	switch carta.id
	{
		case 0:
		break;
		case 1:
		break;
		case 2:
			global.lifeBuff.count++;
			global.lifeBuff.multiplier += 0.2;
			global.vidaMaxima = floor(100 * global.lifeBuff.multiplier);
		break;
		case 3:
		break;
		case 4:
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