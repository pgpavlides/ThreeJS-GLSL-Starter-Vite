

varying vec2 vUv;
uniform float time;

void main() {

    vUv = uv;
    vec3 newpos = position;
    newpos.z += sin( time );
    // newpos.z += sin( time + position.x*1. ) * 0.5;



    vec4 mvPosition = modelViewMatrix * vec4( newpos, 1 );

    gl_PointSize =  ( 15.0 / -mvPosition.z );

    gl_Position = projectionMatrix * mvPosition;

}
