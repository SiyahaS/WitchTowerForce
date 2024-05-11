# IdleState.gd
extends PlayerState

@export
var idle_state: PlayerState

func enter() -> void:
	super()

func process_physics(delta: float) -> PlayerState:
	return null

func process_input(event: InputEvent) -> PlayerState:
	return null
