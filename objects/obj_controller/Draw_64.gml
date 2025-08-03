/// @description desenha a barra de HP

#region desenha a barra de HP
draw_set_alpha( 1 );
draw_set_color(c_white);
draw_set_font(pixels_fonte);

var barWidth = sprite_get_width(spr_hpBar);
var barHeigth = sprite_get_height(spr_hpBar);
var bar_x = 20;
var bar_y = 20;

var hpPercent = global.vida / global.vidaMaxima;

var fillWidth = barWidth * hpPercent

draw_sprite_stretched(
	spr_hpPreenchimento,
	0,
	bar_x,
	bar_y,
	fillWidth,
	barHeigth
);

draw_sprite(spr_hpBar, 0, bar_x + (barWidth/2), bar_y = (barHeigth/2));

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(bar_x + (barWidth / 2), 15 + (barHeigth / 2), string(global.vida) + "/" + string(global.vidaMaxima));
#endregion


#region mostra o debugger
if debugger
{
	draw_text(100, 45, "global.enemiesByStage: "+ string(global.enemiesByStage));
	draw_text(100, 65, "global.totalEnemies: "+ string(global.totalEnemies));
	draw_text(100, 85, "global.enemiesAlive: "+ string(global.enemiesAlive));
	draw_text(100, 105, "global.sortCount: "+ string(global.sortCount));
	draw_text(100, 125, "global.endPhase: "+ string(global.endPhase));
	draw_text(100, 145, "global.paused: "+ string(global.paused));
	draw_text(100, 165, "global.isShowingCards: "+ string(global.isShowingCards));
	
	
	
}
#endregion