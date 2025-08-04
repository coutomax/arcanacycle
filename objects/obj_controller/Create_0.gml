/// @description variáveis globais

randomize();

layer_set_visible("CardsMenu", false);

//global timers
spawnTimer = timer( 1 );
spawnTimer.start();

nextPhase = timer ( 3 );

//debugger
debugger = false;

//Controle de geração de cartas: somente 1x por fase
global.cardSortControl = false;
global.isShowingCards = false;
global.sortCount = 0;

instance_activate_object(obj_cardButton);

#region cria as propriedades das cartas
global.cartas = [
	{	
		id: 0,
		name: "BOLHAS!!!",
		sprite: spr_cardBubble_0,
		description: "Seus feitiços viram bolhas\nde ácido."
	},
	{
		id: 1,
		name: "Fragmentado",
		sprite: spr_cardDebris_1,
		description: "Inimigos criam destroços\nao morrer."
	},
	{
		id: 2,
		name: "Saúde é tudo",
		sprite: spr_cardLife_2,
		description: "+20% da vida máxima."
	},
	{
		id: 3,
		name: "Chamou um Uber?",
		sprite: spr_cardPortals_3,
		description: "Portais se abrem a cada\noito segundos."
	},
	{
		id: 4,
		name: "2 coelhos,\n1 caixa d'água",
		sprite: spr_cardProjectiles_4,
		description: "Dispara mais um feitiço."
	},
	{
		id: 5,
		name: "Na mira!",
		sprite: spr_cardScope_5,
		description: "Feitiços seguirão os alvos."
	}
];
#endregion

#region variáveis globais
	//lista de buffs
	global.bubbles = true;
	global.portals = false;
	global.guided = false; // feitiço teleguiado
	global.doubleProjectiles = {
			active: false,
			count: 0,  // número de cartas
			multiplier: 1 // 2x a quantidade de projéteis que existem (max 10.)
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

	global.atkSpeed = .6;
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
