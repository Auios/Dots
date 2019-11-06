#pragma once

#include "SFML/Graphics/Font.hpp"

using namespace sf;

class Label
{
public:
	float x, y;
	Font* font;
	Text* text;
	float size;
	Color color;
	String message;

	Label(const float x, const float y, const String message, Font* font, const Color color = Color(255, 255, 255))
	{
		this->x = x;
		this->y = y;
		this->message = message;
		this->font = font;
		this->color = color;
		this->text = new Text(this->message, *this->font, this->size);
		this->text->setFillColor(this->color);
		this->text->move(Vector2f(this->x, this->y - this->size / 2));
	}

	~Label()
	{
		delete this->text;
	}

	void Move(float x, float y)
	{
		this->x = x;
		this->y = y;
		this->text->move(Vector2f(this->x, this->y - this->size / 2));
	}

	void SetSize(float size)
	{
		this->size = size;
		this->text->move(Vector2f(this->x, this->y - this->size / 2));
	}
};

