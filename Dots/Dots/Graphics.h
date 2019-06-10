#pragma once

#include <string>
#include "SFML/Window.hpp"
#include "SFML/Graphics.hpp"

#include "AppWindow.h"

using namespace std;
using namespace sf;

void drawText(AppWindow* wnd, const float x, const float y, const string message, const float size, const Font* font, const Color clr = Color(255, 255, 255))
{
	if (size > 0)
	{
		Text text(message, *font, size);
		text.move(Vector2f(x, y - size / 2));
		text.setFillColor(clr);
		wnd->getWindow()->draw(text);
	}
}

void drawLine(AppWindow * wnd, const float x1, const float y1, const float x2, const float y2, Color clr = Color(255, 255, 255))
{
	Vertex line[] =
	{
		Vector2f(x1, y1),
		Vector2f(x2, y2)
	};
	line->color = clr;
	wnd->getWindow()->draw(line, 2, sf::Lines);
}

void drawBox(AppWindow * wnd, const float x1, const float y1, const float x2, const float y2, Color clr = Color(255, 255, 255))
{
	Vertex box[] =
	{
		Vector2f(x1, y1),
		Vector2f(x2, y1),
		Vector2f(x2, y2),
		Vector2f(x1, y2),
		Vector2f(x1, y1)
	};
	box->color = clr;
	wnd->getWindow()->draw(box, 5, sf::LineStrip);
}

void drawPoint(AppWindow * wnd, const float x, const float y, const float radius, const Uint32 pointCount, const Color clr = Color(255, 255, 255))
{
	//Todo: Check pixel radius
	CircleShape circle;
	circle.move(x - radius, y - radius);
	circle.setRadius(radius);
	circle.setFillColor(clr);
	circle.setPointCount(pointCount);
	wnd->getWindow()->draw(circle);
}
