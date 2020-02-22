#include <stdio.h>
#include "Engine.h"

using namespace std;

Engine* game = nullptr;

int main(int argc, char* args[])
{
	game = new Engine();
	game->init("Dots", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 800, 600);
	game->create_world(300, 300);
	game->set_current_world(0);

	while (game->running())
	{
		game->handle_events();
		game->update();
		game->draw();
	}

	game->clean();

	return 0;
}