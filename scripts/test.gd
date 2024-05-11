extends Node

signal new_wave(wave)
signal hp_change(amount)
signal lose
signal wave_cleared

var wave = 1

func _ready():
	emit_signal("new_wave", wave)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		emit_signal("new_wave", wave)
		wave += 1
	pass
