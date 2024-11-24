extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	$CanvasLayer/Button.visible = false
	$AnimationPlayer.play("space1")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _play_sky_anim():
	$AnimationPlayer.play("sky1")
	
func _play_desert_anim():
	$AnimationPlayer.play("desert")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "desert":
		$CanvasLayer/Button.visible = true


func _on_button_pressed() -> void:
	$AnimationPlayer.play("space1")
	$CanvasLayer/Button.visible = false
