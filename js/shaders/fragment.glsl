varying vec2 vUv;
uniform float time; // Assuming you are passing time from your application to the shader.

void main() {
    // Convert UV coordinates to range between 0 and 1
    vec2 uv = vUv;
//     vec2 uv = fragCoord / iResolution.xy;

    // Time varying pixel color using the same logic from the mainImage function

    gl_FragColor = vec4(uv.x, 0.0, 0.0, 1.0);
}
