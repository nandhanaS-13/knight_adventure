extends Area2D
@onready var timer = $Timer



func _on_body_entered(body):
	print("You died!")
	Engine.time_scale=0.5 #slows down the player and restrating of game as he dies
	#body.get_node("CollisionShape2D").queue_free()# queue_free means to remove that node
	timer.start()

func _on_timer_timeout():
	Engine.time_scale=1 # made 1 to set back everything to normal after restart
	get_tree().reload_current_scene()
