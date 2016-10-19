/*
 * Sample dummy shader to check the highlighter plugin.
 */

#version 430 core


layout (binding = 0) uniform sampler2D ground;

uniform float windowLength = 800;
uniform float windowHeigth = 600;

vec3 getTexValue(sampler2D tex, float x, float y)
{
    vec2 div = textureSize(tex,0)/vec2(windowLength,windowHeigth);
    return texture(tex, div*(gl_FragCoord.xy)/(textureSize(tex,0))).xyz;
}

out vec3 color;

void main() 
{
    color.x = getTexValue(ground,0.0,0.0).x ;
    color.y = getTexValue(ground,0.0,0.0).x -1.5;
    color.z = getTexValue(ground,0.0,0.0).x -3.0;
 
}
