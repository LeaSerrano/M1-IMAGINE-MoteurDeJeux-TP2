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

void main(){

        gl_Position = projection * view * vec4(vec3(model * vec4(vertices_position_modelspace, 1.0)), 1.0);
        o_uv0 = uv0;

        /*
        uniform sampler2D colorTexture;
        variable  = position.x, position.y + height, position.z
        glPosition * variable*/
}
