extends Area2D

var link = null
var linkCam = null

func _ready():
	link = get_node("/root/Eagle/Link")
	linkCam = get_node("/root/Eagle/LinkCamera")

func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	link.position.y -= 64 * 2.85
	linkCam.position.y -= 64 * 6
