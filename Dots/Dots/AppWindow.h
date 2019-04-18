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
	Font font;

public:
	bool create(const int wdth, const int hght, const string title, const Uint32 style);
	void close();
	bool isOpen();
	bool pollEvent();
	void clear(const Color& color = Color(0, 0, 0, 255));
	void update();

	// Setters
	void setSize(const int wdth, const int hght);
	void setTitle(const string title);
	Event getEvent();

	// Getters
	int getWidth();
	int getHeight();
	Vector2u getSize();

	// Rendering
	void drawText(const float x, const float y, const string message, const float size = 12, const Color clr = Color(255, 255, 255, 255));
	void drawLine(const float x1, const float y1, const float x2, const float y2, const Color clr = Color(255, 255, 255, 255));
	void drawPoint(const float x, const float y, const Color clr = Color(255, 255, 255, 255), const float radius = 2, const Uint32 pointCount = 30);
};

