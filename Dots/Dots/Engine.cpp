#include "Engine.h"
#include <stdio.h>

Engine::Engine()
{
	this->is_running = false;
	this->window = nullptr;
	this->renderer = nullptr;
	this->current_world = nullptr;
	this->dot_texture = nullptr;
}

Engine::~Engine()
{
}

void Engine::init(const char* title, int pos_x, int pos_y, int width, int height, int flags)
{
	printf("Initializing game...\n");
	if (!SDL_Init(SDL_INIT_EVERYTHING))
	{
		printf("Creating window... (%i, %i)\n", width, height);
		this->window = SDL_CreateWindow(title, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height, flags);
		
		if (this->window)
		{
			printf("Window created!\n");
		}

		printf("Creating renderer...\n");
		this->renderer = SDL_CreateRenderer(this->window, -1, 0);
		if (this->renderer)
		{
			SDL_SetRenderDrawColor(this->renderer, 255, 255, 255, 255);
			printf("Renderer created!\n");
		}

		this->is_running = true;
	}
	else
	{
		this->is_running = false;
	}
}

void Engine::handle_events()
{
	SDL_Event e;
	while (SDL_PollEvent(&e))
	{
		switch (e.type)
		{
		case SDL_QUIT:
			this->shutdown();
			break;

		case SDL_MOUSEBUTTONDOWN:

			break;

		case SDL_KEYDOWN:
			switch (e.key.keysym.sym)
			{
			case SDLK_ESCAPE:
				this->shutdown();
				break;
			}
			break;

		case SDL_KEYUP:
			break;

		default:
			break;
		}
	}
}

void Engine::update()
{

}

void Engine::draw()
{
	// Clear screen
	SDL_SetRenderDrawColor(this->renderer, 0, 0, 0, 255);
	SDL_RenderClear(this->renderer);

	// Draw world
	if (this->current_world)
	{
		this->current_world->draw(this->renderer);
	}
	else
	{
		printf("No world!\n");
	}

	SDL_RenderPresent(this->renderer);
}

void Engine::clean()
{
	printf("Shutting down...\n");
	if(this->renderer)
		SDL_DestroyRenderer(this->renderer);
	if(this->window)
		SDL_DestroyWindow(this->window);
	SDL_Quit();
	printf("Goodbye!\n");
}

bool Engine::running()
{
	return this->is_running;
}

void Engine::shutdown()
{
	this->is_running = false;
}

void Engine::create_world(float width, float height)
{
	this->worlds.push_back(World(width, height));
}

void Engine::set_current_world(unsigned int index)
{
	this->current_world = nullptr;
	if (this->worlds.size() > 0 && index < this->worlds.size())
	{
		this->current_world = &this->worlds[index];
	}
}

bool Engine::load_texture(string name, string file_name)
{
	SDL_Texture* texture = nullptr;
	//this->textures[name] = texture;
	bool failed = false;
	return failed;
}
