/// @description Insert description here
// You can write your code in this editor

//desenha o texto
draw_set_alpha(alpha);
draw_set_color(cor);
draw_set_font(pixels_fonte);
draw_set_halign(fa_center);

//sombra do texto
draw_text(x, y - 10, texto);
draw_set_color(make_color_rgb(50, 50, 50));
draw_text(x + 2, y - 8, texto);