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
draw_text_transformed(x + 1, y + 1, texto, 1, 1, 0);

draw_set_colour(cor_txt);
draw_set_alpha(1);
// Desenhando o texto
draw_text_transformed(x, y, texto, 1, 1, 0);


//resetando
draw_set_font(-1);
draw_set_colour(-1);
draw_set_alpha(-1);
draw_set_halign(-1);
draw_set_valign(-1);