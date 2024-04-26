extends MarginContainer

var curent_level_resourse = load("res://levels/level resourses/curent_level_resourse.tres")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if curent_level_resourse.health <= 0:
		self.show()



func _on_retry_button_up():
	%GameManeger._restart_game()
	self.hide()


func _on_main_menu_button_up():
	%MainMenu.show()
	self.hide()


func _on_quit_button_up():
	pass # Replace with function body.
