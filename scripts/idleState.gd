# IdleState.gd
extends PlayerState

@export
var basic_attack_state: PlayerState
@export
var skill_shot_state: PlayerState

func enter() -> void:
	super()

func process_physics(delta: float) -> PlayerState:
	return null

func process_input(event: InputEvent) -> PlayerState:
	return null
