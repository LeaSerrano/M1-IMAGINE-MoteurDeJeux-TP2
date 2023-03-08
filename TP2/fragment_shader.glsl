#version 330 core

// Ouput data
out vec4 color;

in vec2 o_uv0;

uniform sampler2D grassTexture;
uniform sampler2D rockTexture;
uniform sampler2D snowrocksTexture;

in vec4 height;

void main(){

        /*if (height.r > 0.8) {
                color = texture(grassTexture, o_uv0);
        }
        else if (height.r < 0.6) {
                color = texture(snowrocksTexture, o_uv0);
        }
        else {
                color = texture(rockTexture, o_uv0);
        }*/

        color = texture(grassTexture, o_uv0);
        //color = vec4(o_uv0, 0, 1);
        //color = vec4(0.2, 0.2, 0.4, 1);

}