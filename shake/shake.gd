extends Camera2D

const MAGNITUDE = 50.0
const SPEED = 50.0
const DECAY = 0.2

var noise
var time = 0.0
var shake = 0.0

func _ready():
	noise = OpenSimplexNoise.new()
	noise.seed = randi()
	noise.octaves = 4
	noise.period = 20.0
	noise.persistence = 0.8
	
	shake += 0.8

func _process(delta):
	time += delta
	shake -= DECAY * delta
	shake = clamp(shake, 0, 1)
	offset.x = MAGNITUDE * shake * shake * noise.get_noise_1d(SPEED * time)
	offset.y = MAGNITUDE * shake * shake * noise.get_noise_1d(SPEED * time + TAU)
