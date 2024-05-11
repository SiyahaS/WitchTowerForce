extends Label

#@onready var stats = %stats

# Called when the node enters the scene tree for the first time.
func _ready():
	#stats.connect("new_wave", _on_wave_counter_update)
	pass # Replace with function body.


func _on_wave_counter_update(wave):
	text = "Wave " + str(wave)
	pass
