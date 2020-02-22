#include "Dot.h"

Dot::Dot(float x, float y, float size)
{
	this->x = x;
	this->y = y;
	this->size = size;
	this->shape.x = this->x;
	this->shape.y = this->y;
	this->shape.w = this->shape.h = this->size;
}

Dot::~Dot()
{
}

void Dot::set_pos(float x, float y)
{
	this->x = x;
	this->y = y;
	this->shape.x = this->x;
	this->shape.y = this->y;
}

void Dot::set_size(float size)
{
	this->size = size;
	this->shape.w = this->shape.h = this->size;
}
