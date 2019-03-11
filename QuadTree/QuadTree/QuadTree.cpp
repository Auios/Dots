#include "QuadTree.h"

QuadTree qt_create(Rect area, int depth, int maxDepth)
{
	QuadTree qt;
	qt.area = area;
	qt.depth = depth;
	qt.maxDepth = maxDepth;
}

void qt_delete(QuadTree* qt)
{
	if (qt == nullptr) return;
	delete[] qt->n;
	qt->n = nullptr;
	qt->count = 0;
	qt_delete(qt->NW);
	qt_delete(qt->NE);
	qt_delete(qt->SW);
	qt_delete(qt->SE);
}

void qt_add(QuadTree * qt, void * n)
{
}
