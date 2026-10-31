texto = "vamos la!";



//metodo de atualizar o dialogo
atualiza_texto = function(_texto)
{
    texto = _texto;
    
    //aplicando efeito
    image_xscale = 0.5; 
    image_yscale = 0.5; 
    
    tween(id, "image_xscale", 1, tween_animation.elastic,30);
    tween(id, "image_yscale", 1, tween_animation.elastic,30);
   
    
     
}
