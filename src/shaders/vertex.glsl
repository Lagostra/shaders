uniform vec2 u_resolution;
uniform float u_time;

out vec3 vertexColor;

float random(vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) *
    43758.5453123);
}

void main() {
  vec2 st = vec2(position.x, position.y);
  vertexColor = vec3(random(st), random(st + vec2(1., 0.)), random(st + vec2(0., 1.)));
  gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 0.3);
}