#include "AppWindow.h"

bool AppWindow::create(const int wdth, const int hght, const string title, const Uint32 style)
{
	this->size.x = wdth;
	this->size.y = hght;
	this->title = title;
	this->style = style;

	this->window.create(VideoMode(this->size.x, this->size.y), this->title, this->style);

	if(!this->font.loadFromFile("terminal.ttf"))
		return false;
	return true;
}

void AppWindow::close()
{
	this->window.close();
}

bool AppWindow::isOpen()
{
	return this->window.isOpen();
}

bool AppWindow::pollEvent()
{
	return this->window.pollEvent(this->event);
}

void AppWindow::clear(const Color& color)
{
	this->window.clear(color);
}

void AppWindow::update()
{
	this->window.display();
}

void AppWindow::setSize(const int wdth, const int hght)
{
	this->size.x = wdth;
	this->size.y = hght;
	this->window.setSize(size);
}

void AppWindow::setTitle(const string title)
{
	this->title = title;
	this->window.setTitle(this->title);
}

Event AppWindow::getEvent()
{
	return this->event;
}

int AppWindow::getWidth()
{
	return this->size.x;
}

int AppWindow::getHeight()
{
	return this->size.y;
}

Vector2u AppWindow::getSize()
{
	return this->size;
}

void AppWindow::drawText(const float x, const float y, const string message, const float size, const Color color)
{
	if (size > 0)
	{
		Text text(message, this->font, size);
		text.move(Vector2f(x, y - size / 2));
		text.setFillColor(color);
		this->window.draw(text);
	}
}

void AppWindow::drawLine(const float x1, const float y1, const float x2, const float y2, Color clr)
{
	Vertex line[] =
	{
		Vector2f(x1, y1),
		Vector2f(x2, y2)
	};
	line->color = clr;
	this->window.draw(line, 2, sf::Lines);
}

void AppWindow::drawPoint(const float x, const float y, const Color clr, const float radius, const Uint32 pointCount)
{
	CircleShape circle;
	circle.move(x - radius, y - radius);
	circle.setRadius(radius);
	circle.setFillColor(clr);
	circle.setPointCount(pointCount);
	
	this->window.draw(circle);
}

