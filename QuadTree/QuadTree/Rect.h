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
	bool EXPORT rect_overlap(Rect a, Rect b);
	bool EXPORT rect_inBoundary(Rect r, Point p);
}