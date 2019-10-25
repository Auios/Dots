#pragma once

#include <list>

#include "SFML/System.hpp"
#include "SFML/Graphics.hpp"

#include "QT_Region.h"

template <class T>
class Quad_Tree
{
private:
	QT_Region region;
	Quad_Tree<T>* nw;
	Quad_Tree<T>* ne;
	Quad_Tree<T>* sw;
	Quad_Tree<T>* se;
	std::list<T> objects;

public:
	Quad_Tree(sf::Vector2f top_left, sf::Vector2f bot_right);
	void render(sf::RenderTarget* rt);
};

