extends AnimatedSprite

func update(motion):
	if motion.y < 0:	
		play("jump")	
	elif motion.x > 0:
		flip_h = false
		play("walk")
	elif motion.x < 0:
		flip_h = true
		play("walk")
	else:
		play("idle")
		flip_h = false
	
	