#pragma once
#include "SFML/Graphics.hpp"
#include "SFML/System.hpp"
#include "SFML/Window.hpp"
#include "SFML/Audio.hpp"
#include "SFML/Network.hpp"

class Dot
{
private:
	sf::RectangleShape shape;

	void init_shape();
public:
	Dot(sf::Vector2f pos);
	virtual ~Dot();
	void update();
	void render(sf::RenderTarget* rt);
	void set_pos(sf::Vector2f pos);
};

