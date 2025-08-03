/// @description card definitions

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

carta = {
	id: -1,
	name: "Null",
	sprite: spr_blankCard,
	description: "Null"
};
	
// gera uma carta para o objeto na rodada onde foi criado
#region
	cardSort = function() 
	{
		with(obj_cardButton)
		{
			var sort = irandom_range(0,5);
			carta = global.cartas[sort];
			sprite_index = global.cartas[sort].sprite;
		}		
	}
#endregion