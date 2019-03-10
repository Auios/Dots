#pragma once

#include "defines.h"
#include "Rect.h"

struct QuadTree
{
	Rect area;

	int count;
	Point* p;

	QuadTree* NW;
	QuadTree* NE;
	QuadTree* SW;
	QuadTree* SE;
};

extern "C"
{
	void EXPORT qt_add(Point p);
	void EXPORT qt_delete(QuadTree qt);
}