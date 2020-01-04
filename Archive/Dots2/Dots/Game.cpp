#include "Game.h"

Game::Game(unsigned int width, unsigned int height, sf::String title)
{
	this->echo("Starting up...");
	this->init_variables();
	this->init_window(width, height, title);
	this->load_font("terminal.ttf");
	this->echo("Running!");
}

Game::~Game()
{
	this->echo("Shutting down...");
	delete this->window;
	this->echo("Done!");
}

void Game::echo(std::string message)
{
	std::cout << message << std::endl;
}

void Game::init_variables()
{
	this->window = nullptr;
	this->qt = new Quad_Tree<Dot>(sf::Vector2f(50, 50), sf::Vector2f(150, 150));
}

void Game::init_window(unsigned int width, unsigned int height, sf::String title)
{
	this->echo("Initializing window...");
	this->video_mode.width = width;
	this->video_mode.height = height;
	this->window = new sf::RenderWindow(this->video_mode, title, sf::Style::Titlebar | sf::Style::Close);
	this->window->setFramerateLimit(60);
	this->echo("Created window (" + std::to_string(this->video_mode.width) + "," + std::to_string(this->video_mode.height) + ")!");
}

const bool Game::is_running() const
{
	return this->window->isOpen();
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
				//this->spawn_dot(this->mouse_view);
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

void Game::update()
{
	this->poll_events();
	this->update_mouse();
}

void Game::render()
{
	this->window->clear(sf::Color(100, 100, 200, 255));
	//this->window->clear();

	if(this->qt) this->qt->render(this->window);

	this->window->display();
}

