extends Button


# Called when the node enters the scene tree for the first time.



func _on_button_up():
	if %Guide.is_visible():
		%Guide.hide()
	else:
		%Guide.show()
	
