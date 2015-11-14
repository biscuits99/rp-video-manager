#define MULTISAMPLE
#define CURVATURE
#define BARREL_DISTORTION_X 0.15
#define BARREL_DISTORTION_Y 0.25
#define MASK_BRIGHTNESS 0.75
#define SCAN_LINE_WEIGHT 6.0
#define BLOOM_FACTOR 1.5
#define INPUT_GAMMA 2.4
#define OUTPUT_GAMMA 2.2

/* COMPATIBILITY
   - GLSL compilers
*/

/*
    crt-pi

    Copyright (C) 2015 davej

    This program is free software; you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by the Free
    Software Foundation; either version 2 of the License, or (at your option)
    any later version.
*/

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif


uniform vec2 TextureSize;

varying COMPAT_PRECISION float pixelWidth;
varying COMPAT_PRECISION vec2 screenScale;
varying COMPAT_PRECISION vec2 TEX0;
varying COMPAT_PRECISION float filterWidth;

#if defined(VERTEX)
uniform mat4 MVPMatrix;
attribute vec4 VertexCoord;
attribute vec2 TexCoord;
uniform vec2 InputSize;
uniform vec2 OutputSize;

void main()
{
	pixelWidth = 1.0 / TextureSize.x;
	screenScale = TextureSize / InputSize;
	filterWidth = InputSize.y / OutputSize.y;
	TEX0 = TexCoord;
	gl_Position = MVPMatrix * VertexCoord;
}
#elif defined(FRAGMENT)

uniform sampler2D Texture;

#define BARREL_DISTORTION vec2(BARREL_DISTORTION_X, BARREL_DISTORTION_Y)
// Barrel distortion shrinks the display area a bit, this will allow us to counteract that.
const vec2 barrelScale = 1.0 - (0.23 * BARREL_DISTORTION);

const float bloom = BLOOM_FACTOR / 3.0;

vec2 Distort(vec2 coord)
{
	coord *= screenScale;
	coord -= vec2(0.5);
	float rsq = coord.x * coord.x + coord.y * coord.y;
	coord += coord * (BARREL_DISTORTION * rsq);
	coord *= barrelScale;
	if (abs(coord.x) >= 0.5 || abs(coord.y) >= 0.5)
		coord = vec2(-1.0);		// If out of bounds, return an invalid value.
	else
	{
		coord += vec2(0.5);
		coord /= screenScale;
	}

	return coord;
}

float CalcScanLineWeight(float dist)
{
	float invdist = 1.0 - dist;
	return max(1.0-dist*dist*SCAN_LINE_WEIGHT, invdist*invdist/1.5);
}

void main()
{
#if defined(CURVATURE)
	vec2 texcoord = Distort(TEX0);
	if (texcoord.x < 0.0)
		gl_FragColor = vec4(0.0);
	else
#else
	vec2 texcoord = TEX0;
#endif
	{
		vec2 texcoordInPixels = texcoord * TextureSize - vec2(0.5);
		float yCoord = (floor(texcoordInPixels.y) + 0.5) / TextureSize.y;
		vec2 tc1 = vec2(texcoord.x, yCoord);
		vec3 colour1 = texture2D(Texture, tc1).rgb;
		vec2 tc2 = tc1 + vec2(0.0, 1.0/TextureSize.y);
		vec3 colour2 = texture2D(Texture, tc2).rgb;
		colour1 = pow(colour1, vec3(INPUT_GAMMA));
		colour2 = pow(colour2, vec3(INPUT_GAMMA));

		int whichMask = int(floor(mod(gl_FragCoord.x, 2.0)));
		vec3 mask = vec3(1.0, MASK_BRIGHTNESS, 1.0);
		if (whichMask == 1)
			mask = vec3(MASK_BRIGHTNESS, 1.0, MASK_BRIGHTNESS);

		float dist = fract(texcoordInPixels.y);
		float scanLineWeightsA = CalcScanLineWeight(dist);
		float scanLineWeightsB = CalcScanLineWeight(1.0-dist);
#if defined(MULTISAMPLE)
		dist = dist + 1.0/3.0*filterWidth;
		scanLineWeightsA += CalcScanLineWeight(dist);
		scanLineWeightsB += CalcScanLineWeight(abs(1.0-dist));
		dist = dist - 2.0/3.0*filterWidth;
		scanLineWeightsA += CalcScanLineWeight(abs(dist));
		scanLineWeightsB += CalcScanLineWeight(abs(1.0-dist));
		scanLineWeightsB *= bloom;
		scanLineWeightsA *= bloom;
#endif
		colour1 = colour1 * scanLineWeightsA + colour2 * scanLineWeightsB;

		colour1 = pow(colour1, vec3(1.0 / OUTPUT_GAMMA));

		gl_FragColor = vec4(colour1 * mask, 1.0);
	}
}
#endif
