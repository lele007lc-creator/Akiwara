//usando o efeito tremidinho
squiggle_begin();

//desenhando a sombra
draw_sprite_ext(spr_dialogo_sombra, 0, x + 3, y + 3, image_xscale, image_yscale, image_angle, image_blend, 0.3);

//desenhando o botao
draw_self();

squiggle_end();


//definindo a fonte
draw_set_font(fnt_dialogo);
draw_set_valign(0);
draw_set_halign(0);


//desenhando a sombra das letras
draw_set_colour(c_black);
draw_set_alpha(0.3);
squiggle_draw_text_ext_transformed(x + 24 + 2, y - 5 + 2, texto, 20, 260,  image_xscale, image_yscale, image_angle);

// desenhando o texto
draw_set_colour(c_black); 
draw_set_alpha(1);
squiggle_draw_text_ext_transformed(x + 24, y - 5, texto, 20, 260, image_xscale, image_yscale, image_angle);




//resetando
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_alpha(-1);
draw_set_colour(-1);