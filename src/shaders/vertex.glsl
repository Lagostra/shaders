uniform vec2 u_resolution;
uniform float u_time;

void main() {
  gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 0.51);
}