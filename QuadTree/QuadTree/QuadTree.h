#pragma once

#include "defines.h"
#include "Rect.h"

struct QuadTreeNode
{
	Point p;
	void* n;
};

struct QuadTree
{
	Rect area;

	int depth;
	int maxDepth;
	int count = 0;
	QuadTreeNode* n = nullptr;

	QuadTree* NW = nullptr;
	QuadTree* NE = nullptr;
	QuadTree* SW = nullptr;
	QuadTree* SE = nullptr;
};

extern "C"
{
	QuadTree EXPORT qt_create(Rect area, int depth, int maxDepth);
	void EXPORT qt_delete(QuadTree* qt);
	void EXPORT qt_add(QuadTree* qt, void* n);
	void* EXPORT qt_searchNearest(QuadTree* qt, Point p);
}