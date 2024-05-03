extends Button





@export var Tower_data: Resource


signal tower_2_button_pressed(tower_resource)
func _ready():
	text = "cr: " + str(Tower_data.cost)
	Tower_data.projectile_parent = str(%ProjectileManege)


func _unhandled_input(event):
	if Input.is_action_just_pressed("tower_2_hot_key",1):
		tower_2_button_pressed.emit(Tower_data)



func _on_button_up():
	
	tower_2_button_pressed.emit(Tower_data)
