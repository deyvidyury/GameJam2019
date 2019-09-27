extends StaticBody2D

func sumir(): #quando for pega, sumir
	get_node("animacao").play("pegou")

func apagar(): #eliminar o objeto de vez
	$".".queue_free()
