//criando a onda sinoidal
var _tamanho = 20; //tamanho da minha onda

var _valor = sin((freq * get_timer() / 1000000) + 1) / 2 //minha onda

y = ystart - (_tamanho * _valor);

//ajustando a posição da caixa 

caixa.y = y + margem_y;

//testando o dialogo    
if (keyboard_check_pressed(vk_space))
{
    
    avanca_dialogo();
}
    
//testando o menor
if (keyboard_check_pressed(vk_down))
{
    
    menor();
}
    
//testando o maior
if (keyboard_check_pressed(vk_up))
{
    maior();
}
    