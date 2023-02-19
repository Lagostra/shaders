uniform vec2 u_resolution;
uniform float u_time;

void main() {
  vec2 pos = gl_FragCoord.xy / u_resolution.xy;

  if(pos.x > 0.2 && pos.x < 0.8 && pos.y > 0.2 && pos.y < 0.8) {
    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
  } else {
    gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
  }

}