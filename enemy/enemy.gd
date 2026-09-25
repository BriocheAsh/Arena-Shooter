extends CharacterBody2D

var speed: int = 150

@onready var player: CharacterBody2D = get_tree().get_first_node_in_group("player")

func _physics_process(_delta: float) -> void:
	var enemy_dir: Vector2 = global_position.direction_to(player.global_position)
	velocity = enemy_dir * speed
	move_and_slide()
