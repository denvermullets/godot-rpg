extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("attack"):
#		basically you need to add the effect to the DOM 
#		kinda unsure how the global_position works, will reasearch later
		var GrassEffect = load("res://Effects/GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()
		var world = get_tree().current_scene
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		
		queue_free()
