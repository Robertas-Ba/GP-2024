extends Area2D

@export var explosion_scene:PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var count = 10
	
	
	
	
	
	
	pass # Replace with function body.
	var f:float
	var g:float
	var h:float
	f= 0
	g= 20
	h= 3
	
	f+= 2
	f= f + 2
	g= f - 5
	
	h*= 2
	g= h / 3
	
	var i:int
	var j:int
	var k:int
	
	i= 10
	j= 4
	k= i/j
	
	print (i)
	print (j)
	print (k)
	
	print (f)
	print (g)
	print (h)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	DebugDraw2D.set_text("pos"position)
	DebugDraw2D.set_text("glob_pos")
	DebugDraw2D.set_text("rotation")
	DebugDraw2D.set_text("glob_rotation")
	
	rotation -= 0.1
	
	position.x += 1


func _on_area_entered(area: Area2D) -> void:
	print("collided")
	
	if area.name == "wall" or area.name == "wall2":
		print(area)
		
		var explosion:Node2D = explosion_scene.instantiate()
		explosion.global_possition = area.global_position
		explosion.emmiting
		explosion.emitting = true
		get_parent().add_child(explosion)
		
		area.queue_free()
	
	
	pass # Replace with function body.
