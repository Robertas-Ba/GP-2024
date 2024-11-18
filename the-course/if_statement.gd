extends Node2D

func _draw() -> void:
	var r = get_viewport_rect()
	var hw = r.size.x / 2
	var hh = r.size.y / 2
	
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	var p = get_viewport().get_mouse_position()
	print(p)
	if p.x < hw and p.y < hh:
		draw_rect(Rect2(hw,0,hh, r.size.y), Color.YELLOW, true)
	elif p.x > hw and p.y > hh:
		draw_rect(Rect2(hh,0,hw, r.size.y), Color.ORANGE, true)
	elif p.x < hw and p.y > hh:
		draw_rect(Rect2(hw,hh,hh, r.size.y), Color.ORANGE, true)
	elif p.x > hw and p.y < hh:
		draw_rect(Rect2(hh,hw,hw, r.size.y), Color.PALE_VIOLET_RED, true)
		
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
	
	
			#draw_rect(Rect2(hh,0,hh, r.size.y), Color.ORANGE, true)
		#draw_rect(Rect2(hh,hh,hh, r.size.y), Color.PALE_VIOLET_RED, true)
		#draw_rect(Rect2(hh,0,hh, r.size.y), Color.YELLOW, true)
		#draw_rect(Rect2(0,hh,hh, r.size.y), Color.GREEN, true)
	#if p.y < h:
		#draw_rect(Rect2(0,h,h, r.size.y), Color.GREEN, true)
		#draw_rect(Rect2(h,h,h, r.size.y), Color.PALE_VIOLET_RED, true)
	#else:
		#draw_rect(Rect2(h,h,h, r.size.y), Color.GREEN, true)
		#draw_rect(Rect2(0,h,h, r.size.y), Color.PALE_VIOLET_RED, true)
	#if p.x > 400:
		#r.size.x = r.size.x / 2
		#draw_rect(Rect2(r), Color.RED, true, 10, true)
