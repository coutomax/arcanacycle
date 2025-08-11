/// @description Insert description here
// You can write your code in this editor

depth = 2;

velocidadeFlutuacao = 0.05;
velocidadeMinima = 0.1;
tempoFlutuacao = 0;
flutuando = false;
friccao = 0.98;
amplitude = 6;
baseY = 0;

destroyTimer = timer( irandom_range(2, 4) );
destroyTimer.start();

spd = 3;

xspd = 3;
yspd = 3;

image_xscale = 1;