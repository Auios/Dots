#pragma once
#include <vector>
#include <string>
#include "SDL2/SDL.h"
#include "Dot.h"

using namespace std;

class World
{
public:
	float width;
	float height;
	string name;
	SDL_FRect shape;
	vector<Dot> dots;

	World(float width, float height, string name = "Unnamed World");
	void update();
	void draw(SDL_Renderer* renderer);
};

