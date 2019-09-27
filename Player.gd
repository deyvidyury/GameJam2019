extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVIDADE = 20
const VELOCIDADE = 400
const FORCA_PULO = -800

var motion = Vector2()
var  vidas = 3


func _physics_process(delta):
	motion.y += 20
		
	if Input.is_action_pressed("ui_right"):
		#motion.x = 300
		motion.x = VELOCIDADE
		$Sprite.play("run") #Dessa forma, posso alterar coisas diretamente nos elementos do jogo.
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		#motion.x = -300
		motion.x = -VELOCIDADE
		$Sprite.play("run")
		$Sprite.flip_h = true #inverte a imagem na horizontal
	else:
		motion.x = 0
		$Sprite.play("idle")
		
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			#motion.y = -300
			motion.y = FORCA_PULO
	else:
		$Sprite.play("jump")
	
	motion = move_and_slide(motion, UP)

#func _on_pes_body_entered(body):
#	body.dano()
#	motion.y = FORCA_PULO #pro personagem pular ao derroar um monstro

#func _on_pes_body_entered(body):
#	body.sumir()


#func _on_dano_body_entered(body):
#	body.dano()
	#print("WEWERW")
	#vidas -= 1
	#print(vidas)
	#if vidas == 0:
	#	get_tree().change_scene("Menu.tscn")


func _on_corpo_body_entered(body):
	body.sumir()
	#body.dano()
