uniform vec2 u_resolution;
uniform float u_time;

float random(vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) *
    43758.5453123);
}

void main() {
  vec4 tempPos = projectionMatrix * modelViewMatrix * vec4(position, 0.51);
  float rand = random(vec2(tempPos[0], tempPos[1]));
  tempPos += rand;
  gl_Position = vec4(tempPos[0], tempPos[1], tempPos[2], tempPos[3]);
}