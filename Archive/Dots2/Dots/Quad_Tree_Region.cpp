#include "Quad_Tree_Region.h"

Quad_Tree_Region::Quad_Tree_Region(sf::Vector2f top_left, sf::Vector2f bot_right)
{
	this->top_left = top_left;
	this->bot_right = bot_right;
	this->shape = sf::RectangleShape(bot_right - top_left);
	this->shape.move(top_left);
}

void Quad_Tree_Region::render(sf::RenderTarget* rt)
{
	rt->draw(shape);
}