

varying vec2 vUv;
uniform float time;

void main() {

    vUv = uv;
    vec3 newpos = position;
    newpos.z += sin( time + position.x*10. ) * 0.5;

    vec4 mvPosition = modelViewMatrix * vec4( newpos, 1.0 );

    gl_PointSize =  ( 10.0 / -mvPosition.z );

    gl_Position = projectionMatrix * mvPosition;

}
