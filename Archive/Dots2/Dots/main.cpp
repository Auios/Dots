#include <iostream>
#include <time.h>

#include "Game.h"

#define rnd ((float)rand() / (RAND_MAX))

void echo(std::string text)
{
	std::cout << text << std::endl;
}

int main()
{
	srand((unsigned int)time(NULL));

	Game game(800, 600, "Dots");

	// Start the game loop
	while (game.is_running())
	{
		game.update();
		game.render();
	}

	return EXIT_SUCCESS;
}