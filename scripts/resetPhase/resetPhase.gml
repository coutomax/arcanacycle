// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetPhase(){
	global.stage++;
	global.totalEnemies = 0;
	global.enemiesAlive = (global.enemiesByStage + global.stage)
	global.enemiesByStage = global.enemiesAlive;// começa com 7
	global.endPhase = false;
	global.paused = false;
	global.cardSortControl = false;
	global.isShowingCards = false;
	global.sortCount = 0;
	
	obj_menuManager.updateCardsMenu();
}