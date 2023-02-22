uniform vec2 u_resolution;
uniform float u_time;
in vec3 vertexColor;

void main() {
  gl_FragColor = vec4(vertexColor, 1.0);
}