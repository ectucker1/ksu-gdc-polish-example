shader_type canvas_item;

uniform float white_percent;

void fragment() {
    vec4 color = texture(TEXTURE, UV);
    COLOR = color + white_percent * vec4(1, 1, 1, 0);
}

