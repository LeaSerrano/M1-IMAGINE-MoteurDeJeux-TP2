#version 330 core

// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec3 vertices_position_modelspace;
layout(location = 1) in vec2 uv0;

//TODO create uniform transformations matrices Model View Projection
// Values that stay constant for the whole mesh.

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec2 o_uv0;

uniform sampler2D textureCoords;

vec4 variable;

out vec4 height;

void main(){

        height = texture(textureCoords, uv0);
        variable = vec4(vec3(vertices_position_modelspace.x, vertices_position_modelspace.y + height.r, vertices_position_modelspace.z), 1);

        gl_Position = projection * view * vec4(vec3(model * vec4(vertices_position_modelspace, 1.0)), 1.0)*variable;
        o_uv0 = uv0;
}
