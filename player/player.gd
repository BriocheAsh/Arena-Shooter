extends CharacterBody2D

var speed: int = 300
var direction: Vector2

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
	
