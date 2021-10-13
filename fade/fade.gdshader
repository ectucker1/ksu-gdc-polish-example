shader_type canvas_item;

uniform float percent;

void fragment() {
	vec4 sample = texture(TEXTURE, UV);
	COLOR = vec4(0, 0, 0, step(percent, sample.r));
}

