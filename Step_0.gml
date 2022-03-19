/// @description Aplicando movimentacao e gravidade

var click = mouse_check_button_pressed(mb_left);

if (click) 
{	
	//Chegando se ele esta caindo
	if (velv < 0)
	{
		//Diminuindo minha velocidade em 50%
		velv *= 5;
	}
	velv = -vel;	
}

velv += grav;

//Limitando a velocidade
if (velv < vel) velv = vel;	

if (velv > -vel) velv = -vel;

y += velv;

// Configurando a colisão
var col = instance_place(x,y,obj_cor);


//Checando se colido
if (col)
{	
	//Checando se a minha cor é diferente da do bloco
	if (col.valor != valor)
	{
		room_restart()
	}
}