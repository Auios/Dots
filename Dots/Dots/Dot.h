#pragma once
#include "SDL2/SDL.h"

class Dot
{
public:
	float x, y;
	float size;
	SDL_FRect shape;

	Dot(float x = 0, float y = 0, float size = 10);
	~Dot();

	void set_pos(float x, float y);
	void set_size(float size);
	void draw(SDL_Renderer* renderer);
};

