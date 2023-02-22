uniform vec2 u_resolution;
uniform float u_time;

void main() {
  vec2 pos = gl_FragCoord.xy / min(u_resolution.xy.x, u_resolution.xy.y);

  if(pow(pos.x - 0.8, 2.0) + pow(pos.y - 0.5, 2.0) < pow(0.1, 2.0)) {
    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
  } else {
    gl_FragColor = vec4(0.0, 0.0, 1.0, 1.0);
  }

}