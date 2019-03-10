#include "Rect.h"

bool rect_overlap(Rect* a, Rect* b)
{
	if (a->topLeft.x > b->botRight.x || b->topLeft.x > a->botRight.x)
		return false;
	if (a->topLeft.y < b->botRight.y || b->topLeft.y < a->botRight.y)
		return false;
	return true;
}

bool rect_inBoundary(Rect* r, Point* p)
{
	if (p->x < r->topLeft.x || p->x > r->botRight.x)
		return false;
	if (p->y < r->topLeft.y || p->y > r->botRight.y)
		return false;
	return true;
}

Rect rect_create(int a, int b, int c, int d)
{
	Rect r;
	r.topLeft.x = a;
	r.topLeft.y = b;
	r.botRight.x = c;
	r.botRight.y = d;
	return r;
}

Rect rect_create(Point a, Point b)
{
	Rect r;
	r.topLeft = a;
	r.botRight = b;
	return r;
}

Rect rect_create_area(int area)
{
	return rect_create(0, 0, area, area);
}

Rect rect_create_area(Point p, int area)
{
	return rect_create(p.x, p.y, p.x + area, p.y + area);
}
