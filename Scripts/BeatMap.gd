extends Node2D

var noteScene:PackedScene = preload("res://Scenes/Note.tscn")

func _ready():
	
	addNote()

func addNote():
	
	var note:Note = noteScene.instance()
	$Path1.addNote(note)
