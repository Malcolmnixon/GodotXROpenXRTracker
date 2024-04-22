extends Node3D


@export var left_hand_skeleton : Skeleton3D
@export var right_hand_skeleton : Skeleton3D

var skeleton_scale := 1.0


func _ready():
	var xr_interface := XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		get_viewport().use_xr = true


func _on_left_controller_button_pressed(name: String) -> void:
	match name:
		"by_button":
			skeleton_scale = clampf(skeleton_scale + 0.1, 0.1, 2.0)
			left_hand_skeleton.motion_scale = skeleton_scale
			right_hand_skeleton.motion_scale = skeleton_scale

		"ax_button":
			skeleton_scale = clampf(skeleton_scale - 0.1, 0.1, 2.0)
			left_hand_skeleton.motion_scale = skeleton_scale
			right_hand_skeleton.motion_scale = skeleton_scale


func _on_right_controller_button_pressed(name: String) -> void:
	match name:
		"by_button":
			XRServer.world_scale = clampf(XRServer.world_scale + 0.1, 0.1, 2.0)

		"ax_button":
			XRServer.world_scale = clampf(XRServer.world_scale - 0.1, 0.1, 2.0)
