/// @description encontra qual botão é clicado

switch button_id
{
	case 0:
		global.paused = !global.paused;
		obj_menuManager.updatePause();
	break;
	case 1:
		game_restart();
	break;
	case 2:
	break;
	case 3:
		game_end();
		//room_restart(); // Reinicia a sala atual
		// ou
		//room_goto(rm_menu); // Vai para a sala do menu (substitua "rm_menu" pelo nome da sua sala)
	break;
}