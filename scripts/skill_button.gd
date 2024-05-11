extends TextureButton

@export var skill_id := 0

signal skill_used(id)


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", _on_pressed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	print("Pressed skill ", skill_id)
	emit_signal("skill_used", skill_id)
	pass # Replace with function body.
