#include "World.h"

World::World(float width, float height, string name)
{
	this->width = width;
	this->height = height;
	this->name = name;
	this->shape.x = 0;
	this->shape.y = 0;
	this->shape.w = this->width;
	this->shape.h = this->height;
}

void World::update()
{
}

void World::draw(SDL_Renderer* renderer)
{
	SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);
	SDL_RenderDrawRectF(renderer, &this->shape);
}
