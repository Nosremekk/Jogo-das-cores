/// @description Mudando a cor e criando novos circulos

instance_create_layer(x,y+600,"instances",obj_control);

with(other) //Mudando a cor do outro, que no caso sempre será o player
{
	//Alterando o valor do player
	valor = irandom(3);
	
	image_blend = cor[valor];
}

instance_destroy();
