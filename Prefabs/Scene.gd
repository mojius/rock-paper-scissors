extends Node2D

var rock = preload("res://Prefabs/rock.tscn")
var paper = preload("res://Prefabs/paper.tscn")
var scissors = preload("res://Prefabs/scissors.tscn")

const NUM_OF_INSTANCED_OBJECTS = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	spawnRockPaperOrScissors()
		
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawnRockPaperOrScissors():
	var rng = RandomNumberGenerator.new()
	for n in NUM_OF_INSTANCED_OBJECTS:
		var rockPaperScissorsSelector = randi_range(1,3)
		var instance
		
		if rockPaperScissorsSelector == 1:
			instance = rock.instantiate()
		if rockPaperScissorsSelector == 2:
			instance = paper.instantiate()
		if rockPaperScissorsSelector == 3:
			instance = scissors.instantiate()

		instance.position = Vector2(
			rng.randf_range(0,1) * ProjectSettings.get_setting("display/window/size/viewport_width"),
			rng.randf_range(0,1) * ProjectSettings.get_setting("display/window/size/viewport_height"));
		
		add_child(instance);
	
		
	
