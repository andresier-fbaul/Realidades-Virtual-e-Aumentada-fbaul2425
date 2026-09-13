extends Node3D

@onready var mesh = $MeshInstance3D
var mat:StandardMaterial3D = null

func _ready() -> void:
	mat = mesh.get_active_material(0)

var t:=0.0
func _process(delta: float) -> void:
	t += delta
	mat.albedo_color = Color(1,1,1, cos(t)*0.25+0.5)
	#print(mat.albedo_color)


#
#var mouse_sens = 0.3
#var camera_anglev=0
#
#func _input(event):  		
	#if event is InputEventMouseMotion:
		#$Camera3D.rotate_y(deg_to_rad(-event.relative.x*mouse_sens))
		#var changev=-event.relative.y*mouse_sens
		#if camera_anglev+changev>-50 and camera_anglev+changev<50:
			#camera_anglev+=changev
			#$Camera3D.rotate_x(deg_to_rad(changev))
