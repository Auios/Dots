#pragma once

#include <string>

using namespace std;

enum State
{
	healthy,
	wounded,
	dead
};

class Dot
{
private:
	 State state;

public:
	Dot()
	{
		this->state = healthy;
	}

	void Kill()
	{
		this->state = dead;
	}

};