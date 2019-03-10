#pragma once

#include "defines.h"
#include "Point.h"

struct Rect
{
	Point topLeft, botRight;
};

struct Rectf
{
	Pointf topLeft, botRight;
};

extern "C"
{
	bool EXPORT rect_overlap(Rect* a, Rect* b);
	bool EXPORT rect_inBoundary(Rect* r, Point* p);
	Rect EXPORT rect_create(int a, int b, int c, int d);
	Rect EXPORT rect_create(Point a, Point b);
	Rect EXPORT rect_create_area(int area);
	Rect EXPORT rect_create_area(Point p, int area);
}