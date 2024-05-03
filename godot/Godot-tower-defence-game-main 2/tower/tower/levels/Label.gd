extends Label
var level_resourse: Resource
var timer

func _process(delta):
	
	
	#if level_resourse != null:
		#level_resourse.time_left_timer_reference = timer
	text = ("time left: " + str(int($Timer.time_left)))


