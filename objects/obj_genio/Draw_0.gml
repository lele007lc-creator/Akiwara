//colocando o efeito tremidinho

squiggle_begin();

//desenhando a sombra dele
draw_sprite_ext(spr_genio_sombra, 0, x - 3, y - 3, image_xscale, image_yscale, image_angle, image_blend, 0.3);
//me desenhando
draw_self();

squiggle_end();

