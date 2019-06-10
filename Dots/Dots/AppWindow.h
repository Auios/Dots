#pragma once

#include <string>
#include "SFML/Window.hpp"
#include "SFML/Graphics.hpp"

using namespace std;
using namespace sf;

class AppWindow
{
private:
	Vector2u size;
	string title;
	Uint32 style;
	RenderWindow window;
	Event event;
	ContextSettings settings;

public:
	void create(const int wdth, const int hght, const string title, const Uint32 style)
	{
		this->size.x = wdth;
		this->size.y = hght;
		this->title = title;
		this->style = style;

		settings.antialiasingLevel = 1;

		this->window.create(VideoMode(this->size.x, this->size.y), this->title, this->style, settings);
	}

	void close()
	{
		this->window.close();
	}

	bool isOpen()
	{
		return this->window.isOpen();
	}

	bool pollEvent()
	{
		return this->window.pollEvent(this->event);
	}

	void clear(const Color& color = Color(0, 0, 0, 255))
	{
		this->window.clear(color);
	}

	void update()
	{
		this->window.display();
	}

	// Setters
	void setSize(const int wdth, const int hght)
	{
		this->size.x = wdth;
		this->size.y = hght;
		this->window.setSize(size);
	}

	void setTitle(const string title)
	{
		this->title = title;
		this->window.setTitle(this->title);
	}
	
	void setView(float x1, float y1, float x2, float y2)
	{
		this->window.setView(View(FloatRect(x1, y1, x2, y2)));
	}

	// Getters
	int getWidth()
	{
		return this->size.x;
	}

	int getHeight()
	{
		return this->size.y;
	}

	Vector2u getSize()
	{
		return this->size;
	}

	Event* getEvent()
	{
		return &this->event;
	}

	RenderWindow* getWindow()
	{
		return &this->window;
	}
};