#include <stdio.h>

#include "SDL2/SDL.h"

using namespace std;

int main(int argc, char* args[])
{
	SDL_Init(SDL_INIT_VIDEO);

	SDL_Window* wnd;
	wnd = SDL_CreateWindow("Dots", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 800, 600, SDL_WINDOW_OPENGL);
	if (!wnd)
	{
		printf("Error: Failed to create window\nReason: \"%s\"", SDL_GetError());
		return -1;
	}

	SDL_Delay(1500);

	SDL_DestroyWindow(wnd);
	SDL_Quit();

	return 0;
}