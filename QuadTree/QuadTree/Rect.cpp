#include "Rect.h"

bool rect_overlap(Rect a, Rect b)
{
	if (a.topLeft.x > b.botRight.x || b.topLeft.x > a.botRight.x)
		return false;
	if (a.topLeft.y < b.botRight.y || b.topLeft.y < a.botRight.y)
		return false;
	return true;
}

bool rect_inBoundary(Rect r, Point p)
{
	if (p.x < r.topLeft.x || p.x > r.botRight.x)
		return false;
	if (p.y < r.topLeft.y || p.y > r.botRight.y)
		return false;
	return true;
}