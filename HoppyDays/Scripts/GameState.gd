extends Node2D

export var starting_lives = 3
var lives
var coins = 0
var coin_target = 20

onready var GUI = Global.GUI

func _ready():
	Global.GameState = self
	lives = starting_lives
	update_gui()

func update_gui():
	GUI.update_GUI(coins, lives)

func animate_gui(animation):
	GUI.animate(animation)

func hurt():
	lives -= 1
	update_gui()
	animate_gui("Hurt")
	Global.pain_sfx.play()
	if lives < 0:
		end_game()
		
func coin_up():
	coins += 1
	update_gui()
	animate_gui("CoinPulse")
	var multiple_of_coin_target = (coins % coin_target) == 0
	if multiple_of_coin_target:
		life_up()
		
func life_up():
	lives += 1
	update_gui()

func end_game():
	get_tree().change_scene(Global.GameOver)