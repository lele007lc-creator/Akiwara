//usando o efeito tremidinho
squiggle_begin();

//desenhando a sombra
draw_sprite_ext(sprite_sombra, 0, x + 2, y + 2, image_xscale, image_yscale, image_angle, image_blend, 0.3);

//desenhando o botao
draw_self();

squiggle_end();


//definindo a fonte
draw_set_font(fonte);
draw_set_valign(1);
draw_set_halign(1);


//desenhando a sombra das letras
draw_set_colour(c_black);
draw_set_alpha(0.3);
squiggle_draw_text_transformed(x + 2, y + 2, texto, image_xscale, image_yscale, image_angle);

// desenhando o texto
draw_set_colour(cor_txt); 
draw_set_alpha(1);
squiggle_draw_text_transformed(x, y, texto, image_xscale, image_yscale, image_angle);




//resetando
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_alpha(-1);