#pragma once

#include <deque>

#include "SFML/System.hpp"
#include "SFML/Graphics.hpp"

#include "Quad_Tree_Region.h"

template <class T>
class Quad_Tree
{
private:
	Quad_Tree_Region region;
	Quad_Tree<T>* nw;
	Quad_Tree<T>* ne;
	Quad_Tree<T>* sw;
	Quad_Tree<T>* se;
	std::deque<T> objects;

public:
	Quad_Tree(sf::Vector2f top_left, sf::Vector2f bot_right);
	void render(sf::RenderTarget* rt);
};
