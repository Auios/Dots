#pragma once

#include <iostream>
#include <map>
#include <list>

#include "SFML/Graphics.hpp"
#include "SFML/System.hpp"
#include "SFML/Window.hpp"
#include "SFML/Audio.hpp"
#include "SFML/Network.hpp"

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
	std::list<Dot> dots;

	void init_variables();
	void init_window();
	void init_dots();

public:
	Game();
	virtual ~Game();

	const bool is_running() const;
	void spawn_dot(sf::Vector2f position);
	void echo(std::string message);
	void load_font(std::string file_path);

	void poll_events();
	void update_mouse();
	void update_dots();
	void update();

	void render_dots();
	void render();
};

