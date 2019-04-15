#include "Dot.h"

Dot::Dot()
{
	this->isAlive = true;
}

void Dot::Kill()
{
	isAlive = false;
}
