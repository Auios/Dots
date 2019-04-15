#pragma once

#include <string>

using namespace std;

class Dot
{
private:
	enum state
	{
		fine,
		wounded,
		dead
	};

public:
	Dot();
	void Kill();
};