class_name Player
extends CharacterBody2D

enum PLAYER_STATES
{
	Idle,
	Move,
	Basic_Attack,
	Skill_Shot
}

@onready
var player_state: int
@onready
var player_prev_state: int

@onready
var animations = $AnimationPlayer
@onready
var label = $Label
@onready
var sprite = $PlayerSprite2D
@onready
var stateManager = $PlayerStateManager

@export
var move_speed: float = 58
@export
var move_acceleration: float = 5.8
@onready
var move_direction: int = 0

func _ready():
	# Initialize the state manager, passing a referance of the player to the states
	# That way they can move and react accordingly
	stateManager.init(self)

func _unhandled_input(event: InputEvent) -> void:
	stateManager.process_input(event)

func _physics_process(delta: float) -> void:
	stateManager.process_physics(delta)

func _process(delta: float) -> void:
	stateManager.process_frame(delta)
