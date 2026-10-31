freq = random_range(1, 3); // velocidade da minha onda

//efeito de mudar a escala
escala_x = 0;
escala_y = 0;

//fazendo ela fik grande
tween(id, "escala_x", 2, tween_animation.elastic, 30);
tween(id, "escala_y", 2, tween_animation.elastic, 30);



