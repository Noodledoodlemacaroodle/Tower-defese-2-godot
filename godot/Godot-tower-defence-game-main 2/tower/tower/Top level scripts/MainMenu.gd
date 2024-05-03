extends MarginContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_start_button_up():
	%Guide.hide()
	%"GameManeger"._start_game()
	self.hide()
