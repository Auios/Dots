#pragma once

struct Point
{
	int x, y;
};

struct Pointf
{
	float x, y;
};

#define EXPORT __declspec(dllexport)

extern "C"
{
	void EXPORT point_set(Point* p, int x, int y);
	void EXPORT pointf_set(Pointf* p, float x, float y);
}