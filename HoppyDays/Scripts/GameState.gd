extends Node2D

export var starting_lives = 3
var lives

func _ready():
	Global.GameState = self
	lives = starting_lives
	update_gui()

func update_gui():
	Global.GUI.update_GUI(lives)

func hurt():
	lives -= 1
	update_gui()
	if lives < 0:
		end_game()

func end_game():
	get_tree().change_scene("res://Scenes/GameOver.tscn")