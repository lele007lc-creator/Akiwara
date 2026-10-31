// verificando se o mouse ta em cima do botao
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if (_mouse_sobre)
{
   tween(id, "image_xscale", escala_final_x, tween_animation.elastic, 30);
   tween(id, "image_yscale", escala_final_y, tween_animation.elastic, 30);
    
    
    //quando clicar
    if (_mouse_click)
    {
        
        tween(id, "image_xscale", escala_final_x * 2, tween_animation.elastic, 30);
        tween(id, "image_yscale", escala_final_y * 2, tween_animation.elastic, 30);
        
        //fazendo a ação
        acao();
    }
     
    
}
else 
{
    
    tween(id, "image_xscale", escala_x, tween_animation.elastic, 20);
    tween(id, "image_yscale", escala_y, tween_animation.elastic, 20);
    
}




