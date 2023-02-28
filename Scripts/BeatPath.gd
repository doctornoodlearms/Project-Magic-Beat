extends Path2D

var noteList:Array = []

func addNote(newNote:Note):
	
	noteList.append(newNote)
	
	newNote.connect("RemovingNote", self, "_removeNote")
	add_child(newNote)
	
func _removeNote():
	
	noteList.pop_front()

func _input(event: InputEvent) -> void:
	
	if(Input.is_action_just_pressed("beatmap_input1")):
		
		if(noteList.size() <= 0):
			return
		
		if(noteList[0] == null):
			return
		
		(noteList[0] as Note).hitNote()
		
