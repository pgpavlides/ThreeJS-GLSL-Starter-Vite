

varying vec2 vUv;
uniform float time;

void main() {

    vUv = uv;
    vec3 newpos = position;
    newpos.z += sin(time);
    // newpos.x += sin(time * 1.5 + position.z * 3.0) * 0.1;
    // newpos.y += sin(time * 1.0 + position.x * 2.0 + position.z * 3.0) * 0.2;

    // newpos.z += sin( time + position.x*1. ) * 0.5;



    vec4 mvPosition = modelViewMatrix * vec4( newpos, 1 );

    gl_PointSize =  ( 40.0 / -mvPosition.z );

    gl_Position = projectionMatrix * mvPosition;

}
