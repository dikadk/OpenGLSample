#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

uniform float rightOffset;

out vec3 ourColor;

void main()
{
    gl_Position = vec4(aPos.x+rightOffset, aPos.y*cos(rightOffset), aPos.z*rightOffset, 1.0);
    ourColor = aColor;
}