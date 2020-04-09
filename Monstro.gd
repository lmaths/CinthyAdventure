extends StaticBody2D
var posicao_inicial
var posicao_final
var flip = true
var velocidade = 1

func _ready():
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 150

func _process(delta):
	if(posicao_inicial <= posicao_final and flip):
		$".".position.x += velocidade
		$AnimatedSprite.flip_h = false
		if($".".position.x >= posicao_final):
			flip = false
	if($".".position.x >= posicao_inicial and !flip):
		$".".position.x -= velocidade
		$AnimatedSprite.flip_h = true
		if($".".position.x <= posicao_inicial):
			flip = true;
			
			
			
		
		


