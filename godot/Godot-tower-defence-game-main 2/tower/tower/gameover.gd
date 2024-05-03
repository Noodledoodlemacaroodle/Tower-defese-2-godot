extends MarginContainer

var curent_level_resourse = load("res://levels/level resourses/curent_level_resourse.tres")
var timer

const win_text = "VICTORY"
const lose_text = "Game Over"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if curent_level_resourse.time_left_timer_reference != null:
	#	timer = curent_level_resourse.time_left_timer_reference 
		#timer.connect("timeout", self.win)
	if curent_level_resourse.health <= 0:
		lose()

func win():
	$"HBoxContainer/VBoxContainer/Label".text = win_text
	show()
	get_tree().paused = true

func lose():
	$"HBoxContainer/VBoxContainer/Label".text = lose_text
	show()
	get_tree().paused = true



func _on_retry_button_up():
	%GameManeger._restart_game()
	self.hide()
	get_tree().paused = false


func _on_main_menu_button_up():
	%MainMenu.show()
	self.hide()


func _on_quit_button_up():
	pass # Replace with function body.
