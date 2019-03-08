#include "stdio.h"

#include "Point.h"
#include "Rect.h"


#define EXPORT __declspec(dllexport)

extern "C"
{
	void EXPORT point_set(Point* p, int x, int y);
	void EXPORT pointf_set(Pointf* p, float x, float y);
	bool EXPORT rect_overlap(Rect a, Rect b);
}

void point_set(Point* p, int x, int y)
{
	p->x = x; p->y = y;
}

void pointf_set(Pointf* p, float x, float y)
{
	p->x = x; p->y = y;
}

bool rect_overlap(Rect a, Rect b)
{
	if (a.topLeft.x > b.botRight.x || b.topLeft.x > a.botRight.x)
		return false;
	if (a.topLeft.y < b.botRight.y || b.topLeft.y < a.botRight.y)
		return false;
	return true;
}