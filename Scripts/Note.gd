extends PathFollow2D
class_name Note

signal RemovingNote

export var noteTime:float = 1.0
export var hitWindow:float = 1.0

func hitNote():
	
	if($NoteTime.time_left <= hitWindow):
		print("Hit")
		
	else:
		print("Miss")
	
	_removeNote()

func _ready() -> void:
	
	$Tween.interpolate_property(self, "unit_offset", 0.0, 1.0, noteTime, Tween.TRANS_LINEAR)
	$Tween.start()
	
	$NoteTime.wait_time = noteTime
	$NoteTime.start()

func _removeNote():
	
	emit_signal("RemovingNote")
	queue_free()

func _onSelfPressed() -> void:
	
	hitNote()


func _onSelfTimeout() -> void:
	
	_removeNote()
