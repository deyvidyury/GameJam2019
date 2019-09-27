extends Area2D

export(String, FILE, "*.tscn") var cenas #exporta uma determinada ceba para a variável para que possa mudar.

func _on_Passagem_body_entered(body):
	get_tree().change_scene(cenas)
