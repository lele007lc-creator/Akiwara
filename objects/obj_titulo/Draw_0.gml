//draw_self();
//definindo a fonte 
draw_set_font(fonte);


//alinhando
draw_set_halign(1);
draw_set_valign(1);

//cor da sombra
draw_set_colour(c_black);
draw_set_alpha(0.3);
//Desenhando a sombra
squiggle_draw_text_transformed(x + 3, y + 3, texto, escala_x, escala_y, 0);

draw_set_colour(cor_txt);
draw_set_alpha(1);
// Desenhando o texto
squiggle_draw_text_transformed(x, y, texto, escala_x, escala_y, 0);


//resetando
draw_set_font(-1);
draw_set_colour(-1);
draw_set_alpha(-1);
draw_set_halign(-1);
draw_set_valign(-1);