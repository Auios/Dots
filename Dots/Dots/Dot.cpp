#include "Dot.h"

Dot::Dot()
{
	this->state = healthy;
}

void Dot::Kill()
{
	this->state = dead;
}
