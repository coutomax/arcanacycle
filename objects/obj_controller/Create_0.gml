/// @description variáveis globais

randomize();

layer_set_visible("CardsMenu", false);

//timers
spawnTimer = timer( 1 );
spawnTimer.start();

nextPhase = timer ( 3 );

//debugger
debugger = false;

//timer do portal
spawnPortals = timer( global.spawnPortalTimer );

instance_activate_object(obj_cardButton);
