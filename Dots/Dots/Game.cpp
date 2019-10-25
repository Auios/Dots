#include "Game.h"

Game::Game()
{
	this->echo("Starting up...");
	this->init_variables();
	this->init_window();
	this->load_font("terminal.ttf");
	this->init_dots();
	this->echo("Running!");
}

Game::~Game()
{
	this->echo("Shutting down...");
	delete this->window;
	this->echo("Done!");
}

void Game::init_variables()
{
	this->window = nullptr;
}

void Game::init_window()
{
	this->echo("Initializing window...");
	this->video_mode.width = 800;
	this->video_mode.height = 600;
	this->window = new sf::RenderWindow(this->video_mode, "Dots", sf::Style::Titlebar | sf::Style::Close);
	this->window->setFramerateLimit(60);
	this->echo("Created window (" + std::to_string(this->video_mode.width) + "," + std::to_string(this->video_mode.height) + ")!");
}

void Game::init_dots()
{
	this->spawn_dot(sf::Vector2f(20, 20));
	this->spawn_dot(sf::Vector2f(40, 70));
	this->spawn_dot(sf::Vector2f(120, 100));
}

const bool Game::is_running() const
{
	return this->window->isOpen();
}

void Game::spawn_dot(sf::Vector2f position)
{
	Dot dot = Dot(position);
	dot.set_pos(position);
	this->dots.push_back(dot);
	std::cout << "Dots: " << this->dots.size() << std::endl;
}

void Game::echo(std::string message)
{
	std::cout << message << std::endl;
}

void Game::load_font(std::string file_path)
{
	if (file_path.length() > 0)
	{
		this->echo("Loading font '" + file_path + "'...");
		sf::Font font;
		if (font.loadFromFile(file_path))
		{
			size_t pos = file_path.find_last_of('.');
			if (pos != std::string::npos)
			{
				std::string font_name = file_path.substr(0, pos);
				this->font[font_name] = font;
				this->echo("Loaded '" + file_path + "' as '" + font_name + "'!");
			}
		}
	}
	else
	{
		this->echo("Error: load_font was passed an empty string!");
	}
}

void Game::poll_events()
{
	while (this->window->pollEvent(this->event))
	{
		switch (this->event.type)
		{
		case sf::Event::Closed:
			this->window->close();
			break;
		case sf::Event::KeyPressed:
			if (this->event.key.code == sf::Keyboard::Escape)
				this->window->close();
			break;
		case sf::Event::MouseButtonPressed:
			if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
			{
				this->spawn_dot(this->mouse_view);
			}
			break;
		}
	}
}

void Game::update_mouse()
{
	this->mouse_pos = sf::Mouse::getPosition(*this->window);
	this->mouse_view = this->window->mapPixelToCoords(this->mouse_pos);
}

void Game::update_dots()
{
}

void Game::update()
{
	this->poll_events();
	this->update_mouse();
	this->update_dots();
}

void Game::render_dots()
{
	std::list<Dot>::iterator it;
	for (it = dots.begin(); it != dots.end(); it++)
		it->render(this->window);
}

void Game::render()
{
	//this->window->clear(sf::Color(100, 100, 200, 255));
	this->window->clear();
	this->render_dots();
	this->window->display();
}
