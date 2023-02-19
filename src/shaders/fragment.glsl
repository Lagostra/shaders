uniform vec2 u_resolution;
uniform float u_time;

void main() {
  vec2 pos = gl_FragCoord.xy / u_resolution.xy;
  gl_FragColor = vec4(pos.x * 2.0, pos.y * 1.8, pos.x * 0.5, 1.0);
}