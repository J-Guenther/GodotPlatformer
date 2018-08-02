extends CanvasLayer

func _ready():
	Global.GUI = self

func update_GUI(coins, lives):
	$TextureRect/Container/CoinCount.text = str(coins)
	$TextureRect/Container/LifeCount.text = str(lives)
	
func animate(animation):
	$AnimationPlayer.play(animation)