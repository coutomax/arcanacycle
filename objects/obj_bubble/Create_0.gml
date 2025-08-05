/// @description Insert description here
// You can write your code in this editor

depth = 2;

friccao = 0.98;
velocidadeMinima = 0.1;
amplitude = 6;
velocidadeFlutuacao = 0.05;
tempoFlutuacao = 0;
flutuando = false;
baseY = 0;

destroyTimer = timer( irandom_range(2, 4) );
destroyTimer.start();

xspd = 3;
yspd = 3;

image_xscale = 1;