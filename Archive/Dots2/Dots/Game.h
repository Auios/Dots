#pragma once

#include <iostream>
#include <map>
#include <list>

#include "SFML/Graphics.hpp"
#include "SFML/System.hpp"
#include "SFML/Window.hpp"
#include "SFML/Audio.hpp"
#include "SFML/Network.hpp"

#include "Quad_Tree.h"
#include "Dot.h"

class Game
{
private:
	sf::RenderWindow* window;
	sf::VideoMode video_mode;
	sf::Event event;
	sf::Vector2i mouse_pos;
	sf::Vector2f mouse_view;

	std::map<std::string, sf::Font> font;
	Quad_Tree<Dot>* qt;
	std::list<Dot> dots;

	void init_variables();
	void init_window(unsigned int width, unsigned int height, sf::String title);

public:
	Game(unsigned int width = 800, unsigned int height = 600, sf::String title = "Application");
	virtual ~Game();

	void echo(std::string message);
	const bool is_running() const;
	void load_font(std::string file_path);

	void poll_events();
	void update_mouse();
	void update();

	void render();
};
