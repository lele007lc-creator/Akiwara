//criando a onda sinoidal
var _tamanho = 20; //tamanho da minha onda

var _valor = sin((freq * get_timer() / 1000000) + 1) / 2 //minha onda

y = ystart - (_tamanho * _valor);

//ajustando a posição da caixa 

caixa.y = y + margem_y;

    
if (keyboard_check_pressed(vk_space))
{
    
    avanca_dialogo();
}
    
    