extends Node

var menu_music = preload("res://assets/audio/music/afternoon.mp3")
var game_music = preload("res://assets/audio/music/afternoon.mp3")

func play_menu_music():
	$Music.stream = menu_music
	$Music.play()

func play_game_music():
	$Music.stream = game_music
	$Music.play()


func _ready(): 
	play_menu_music()
