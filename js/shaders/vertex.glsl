varying vec2 vUv;
uniform float time;

// Simple pseudo-random function for z axis randomness.


void main() {
    vUv = uv;
    
    vec3 newpos = position;
    vec4 mvPosition = modelViewMatrix * vec4(newpos, 1);
    gl_Position = projectionMatrix * mvPosition;
}
