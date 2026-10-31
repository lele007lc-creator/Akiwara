//criando a onda sinoidal
var _tamanho = 20; //tamanho da minha onda

var _valor = sin((freq * get_timer() / 1000000) + 1) / 2 //minha onda

y = ystart + (_tamanho * _valor);

//fazendo as letras aumentarem
//checando se o mouse esta em cima delas
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);

if (_mouse_sobre)
{
    tween(id, "escala_x", 3, tween_animation.elastic, 30);
    tween(id, "escala_y", 3, tween_animation.elastic, 30);
    
     
}
else
{
    
    tween(id, "escala_x", 2, tween_animation.elastic, 30);
    tween(id, "escala_y", 2, tween_animation.elastic, 30);
    
    
}

