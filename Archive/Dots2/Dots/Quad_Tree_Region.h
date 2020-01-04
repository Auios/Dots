#pragma once

#include "SFML/System.hpp"
#include "SFML/Graphics.hpp"

class Quad_Tree_Region
{
private:
	sf::Vector2f top_left;
	sf::Vector2f bot_right;
	sf::RectangleShape shape;
	
public:
	Quad_Tree_Region(sf::Vector2f top_left, sf::Vector2f bot_right);
	void render(sf::RenderTarget* rt);
};

