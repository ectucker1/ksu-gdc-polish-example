extends Sprite

const SPEED = 3.0

func _process(delta):
	region_rect.position.x += SPEED * delta
	region_rect.position.y -= SPEED * delta
