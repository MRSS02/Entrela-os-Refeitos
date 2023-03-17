extends Node

var menu_music = preload("res://assets/audio/music/menu.wav")
var morning_music = preload("res://assets/audio/music/morning.wav")
var afternoon_music = preload("res://assets/audio/music/afternoon.wav")
var ending_music = preload("res://assets/audio/music/ending.wav")

func play_menu_music():
	$Music.stream = menu_music
	$Music.play()

func play_morning_music():
	$Music.stream = morning_music
	$Music.play()
	
func play_afternoon_music():
	$Music.stream = afternoon_music
	$Music.play()
	
func play_ending_music():
	$Music.stream = ending_music
	$Music.play()
	
