extends Node2D

var noteScene:PackedScene = preload("res://Scenes/Note.tscn")

func _ready():
	
	addNote()

func addNote():
	
	var note1:Note = noteScene.instance()
	var note2:Note = noteScene.instance()
	var note3:Note = noteScene.instance()
	var note4:Note = noteScene.instance()
	var note5:Note = noteScene.instance()
	var note6:Note = noteScene.instance()
	
	$Path1.addNote(note1)
	$Path2.addNote(note2)
	$Path3.addNote(note3)
	$Path4.addNote(note4)
	$Path5.addNote(note5)
	$Path6.addNote(note6)
