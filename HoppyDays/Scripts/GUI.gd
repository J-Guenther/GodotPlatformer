extends CanvasLayer

func _ready():
	Global.GUI = self

func update_GUI(lives):
	$TextureRect/Container/LifeCount.text = str(lives)