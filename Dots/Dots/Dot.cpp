#include "Dot.h"

void Dot::init_shape()
{
	this->shape.setFillColor(sf::Color::Green);
	this->shape.setSize(sf::Vector2f(10, 10));
}

Dot::Dot(sf::Vector2f pos)
{
	this->init_shape();
	this->shape.setPosition(pos);
}

Dot::~Dot()
{
}

void Dot::update()
{
}

void Dot::render(sf::RenderTarget* rt)
{
	rt->draw(this->shape);
}

void Dot::set_pos(sf::Vector2f pos)
{
	this->shape.setPosition(pos);
}
