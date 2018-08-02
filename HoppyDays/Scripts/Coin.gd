extends AnimatedSprite

var taken = false

func _on_Area2D_body_entered(body):
	if not taken:
		Global.GameState.coin_up()
		$AnimationPlayer.play("die")
		$AudioStreamPlayer.play()
		taken = true
	
func die():
	queue_free()