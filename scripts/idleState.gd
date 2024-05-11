# IdleState.gd
extends PlayerState

@export
var move_state: PlayerState
@export
var basic_attack_state: PlayerState
@export
var skill_shot_state: PlayerState

func enter() -> void:
	super()

func process_physics(delta: float) -> PlayerState:
	return null

func process_input(event: InputEvent) -> PlayerState:
	if event.is_action_pressed('move-up') or event.is_action_pressed('move-down'):
		var movement = Input.get_axis('move-up', 'move-down')
		parent.move_direction = movement
		print(parent.global_position.y)
		if parent.global_position.y < 254 and movement == 1:
			return move_state
		elif parent.global_position.y >86 and movement == -1:
			return move_state
			
	return null
