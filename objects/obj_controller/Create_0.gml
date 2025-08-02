/// @description variáveis globais

randomize();

layer_set_visible("CardsMenu", false);

//global timers
spawnTimer = timer( 2 );
spawnTimer.start();

nextPhase = timer ( 3 );

//Controle de geração de cartas: somente 1x por fase
global.cardSortControl = true;

//variáveis globais
#region
	//lista de buffs
	global.bubbles = false;
	global.portals = false;
	global.guided = false; // feitiço teleguiado
	global.doubleProjectiles = {
			active: false,
			count: 0,
			multiplier: 1
	};
	global.healBuff = {
			count: 0,
			multiplier: 1,
			heal: 25
	};
	global.lifeBuff = {
			count: 0,
			multiplier: 1,
	};
	global.debris = {
			active: false,
			count: 0, //pra cada um a mais, 2 projéteis serão adicionados.
			debris: 0
	};

	//fisica
	global.gravidade = .25;
	global.maxGravidade = 8;

	//player stats
	global.enemiesKilled = 0;
	global.luck = 30;
	global.experience = 0;
	global.level = 1;
	global.nextLevel = 49; // 7 * 7 = 49
	global.vida = 100;
	global.vidaMaxima = 100;
	global.dano = 5;

	//multiplicadores --- jogar todos pros buffs/debufffs
	global.dmgMultiplicador = 1.0;
	global.expMultiplicador = 1.0;

	global.atkSpeed = .35;
	global.spdProjetilMultiplicador = 1.0;

	//dados da fase
	global.stage = 1;
	global.endPhase = false;
	global.totalEnemies = 1;
	global.enemiesByStage = 1;
	global.enemiesAlive = global.enemiesByStage;

	//item variables
	global.totalHeal = global.healBuff.heal * global.healBuff.multiplier;
	global.lifeChance = 15; // 15% de chance de dropar vida
	
	//game status
	global.paused = false;	
#endregion