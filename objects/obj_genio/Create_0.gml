// velocidade da minha onda

freq = 2;

// dialogos
indice = 0;

texto_1 = "Pense em um número\n de 0 a 100";
texto_2 = "Eu vou adivinhar o seu número";
texto_3 = "Pensou?!";
texto_4 = "O número é x";

meus_dialogos = [texto_1, texto_2, texto_3, texto_4];

//margem de x e y
margem_x = 70;
margem_y = 80;

//criando a caixa de dialogo
caixa = instance_create_layer(x + margem_x, y + margem_y  , layer, obj_dialogo);
//fazendo o genio controlar o dialogo
caixa.texto = meus_dialogos[indice];

//criando um metodo p avançar o dialogo
avanca_dialogo = function()
{
    //definindo o limite do array
    var _limite = array_length(meus_dialogos) - 1; // começa a contar do 0
    
    //não vou rodar o o metodo se ja cheguei no limite
    if (indice >= _limite) return;
    
    //so faço isso se ainda nao cheguei no limite    
    indice++;
        
    if (indice > _limite) indice = _limite;//garantindo q meu indice não passe do limite
    
     var _txt = meus_dialogos[indice];
    caixa.atualiza_texto(_txt);
     
}





