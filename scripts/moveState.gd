# IdleState.gd
extends PlayerState

@export
var idle_state: PlayerState
@onready
var move_distance: float

func enter() -> void:
	super()
	move_distance = parent.move_speed

func process_physics(delta: float) -> PlayerState:

	if move_distance > 0:
		parent.global_position.y += parent.move_acceleration * parent.move_direction
		move_distance -= parent.move_acceleration
		#print(move_distance)
		#print(parent.move_direction)
		return null
	
	return idle_state

func process_input(event: InputEvent) -> PlayerState:
	return null
