extends Sprite

const SPEED = 7
const AMPLITUDE = 20
const BASE_SCALE = 10

var time = 0

func _process(delta):
	time += delta
	position.y = AMPLITUDE * sin(SPEED * time)
	# Secret hidden feature: coin rotation
	scale.x = BASE_SCALE * sin(SPEED * time)
