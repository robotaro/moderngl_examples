#version 330

#if defined VERTEX_SHADER

in vec3 in_position;
in vec2 in_texcoord_0;

out vec2 uv;

void main() {
    gl_Position = vec4(in_position, 1.0);
    uv = in_texcoord_0;
}

#elif defined FRAGMENT_SHADER

out vec4 out_color;
in vec2 uv;

uniform sampler2D texture0;

void main() {
    out_color = texture(texture0, uv);
}
#endif