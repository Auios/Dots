#pragma once

#include <vector>

#include "Rect.h"

struct QuadTree
{
	Rect area;

	std::vector<Point> points;

	QuadTree* NW;
	QuadTree* NE;
	QuadTree* SW;
	QuadTree* SE;
};

extern "C"
{
	
}