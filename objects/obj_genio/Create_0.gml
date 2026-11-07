// velocidade da minha onda

freq = 2;

acertei = false;

//variaveis de busca binária
limite_inferior = 0;
limite_superior = 100;
numero          = 50; 


// dialogos
indice = 0;

texto_1 = "Pense em um número\n de 0 a 100";
texto_2 = "Eu vou adivinhar o seu número";

texto_3 = "Pensou?!";
texto_4 = string($"O número é {numero}"); //em vez de "O número é " + string(valor_inicial);

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
   
   //reiniciando o jogo se eu acertei 
   if (acertei) 
    {
        game_restart();
        return;
    }
        
    //definindo o limite do array
    var _limite = array_length(meus_dialogos) - 1; // começa a contar do 0
     
    //não vou rodar o o metodo se ja cheguei no limite
    if (indice >= _limite) return;
    
    //so faço isso se ainda nao cheguei no limite    
    indice++;
        
    if (indice >= _limite)
    {    
      
        indice = _limite;//garantindo q meu indice não passe do limite
        
        //aviso q posso mostrar os outros botoe
        layer_set_visible("botoes", true);
    
    }
    
     var _txt = meus_dialogos[indice];
    caixa.atualiza_texto(_txt);
     
}

//menor que o chute
menor = function()
{
   //verificando se posso funcionar
   var _limite = array_length(meus_dialogos) - 1;
    
    if (indice >= _limite && !acertei)
    {
         //definindo o limite maior
        limite_superior = numero;
    
        //calculando o proximo chute
        numero = round((limite_superior + limite_inferior) /2);
    
        //atualizando o texto
        var _txt = string($"O número é {numero}");
    
        caixa.atualiza_texto(_txt);
    }
}

//maior que o chute
maior = function()
{
   
    var _limite = array_length(meus_dialogos) - 1;
    
    if (indice >= _limite && !acertei)
    {
          //definindo o limite maior
         limite_inferior = numero;
         
         //calculando o proximo chute
         numero = round((limite_superior + limite_inferior) /2);
         
         //atualizando o texto
         var _txt = string($"O número é {numero}");
         
         caixa.atualiza_texto(_txt);
    }
}

//acertou o chute
acertou = function()
{
    var _limite = array_length(meus_dialogos) - 1;
    
    if (indice >= _limite && !acertei)
    {
        //dialogo de acertou
        caixa.atualiza_texto("Ebaa, acertei!!!\n Avançar reinicia o jogo");
        
        //avisando q acertei
        acertei = true;
        
    }
        
    
    
}
