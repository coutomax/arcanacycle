/// @description card definitions

localSortControl = false;

//Manipulação do texto na interface
#region
	nodeCard = layer_get_flexpanel_node("CardsMenu");
	childCard = flexpanel_node_get_child(nodeCard, "CardPlace_" + string(idCardButton));

	//Realiza ajustes no texto da descrição
	subNode = flexpanel_node_get_child(nodeCard, "DescriptionPanel");
	childText = flexpanel_node_get_child(subNode, "CardDescription_" + string(idCardButton));

	textStructureDescription = flexpanel_node_get_struct(childText);
	textElementIdDescription = textStructureDescription.layerElements[0].elementId;
	
	//Realiza ajustes no texto do nome
	nameNode = flexpanel_node_get_child(nodeCard, "NamePanel");
	childName = flexpanel_node_get_child(nameNode, "CardName_" + string(idCardButton));
	
	textStructureName = flexpanel_node_get_struct(childName);
	textElementIdName = textStructureName.layerElements[0].elementId;	
#endregion

//cria as propriedades das cartas
#region
cartas = [
	{	
		id: 0,
		name: "BOLHAS!!!",
		sprite: spr_cardBubble_0,
		description: "Seus feitiços viram bolhas!"
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

//gera uma carta para o objeto na rodada onde foi criado
//#region
//	cardSort = function() 
//	{
//		var sort = irandom_range(0,5);
//		show_debug_message("SORT CARD: "+ string(sort));
//		carta = cartas[sort];
//		sprite_index = cartas[sort].sprite;
//	}
//#endregion
