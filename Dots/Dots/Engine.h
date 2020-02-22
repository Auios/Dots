#pragma once
#include <string>
#include <vector>
//#include <map>
#include "SDL2/SDL.h"
#include "SDL2/SDL_image.h"

#include "World.h"

using namespace std;

class Engine
{
public:
	World* current_world;

	Engine();
	~Engine();

	void init(const char* title, int pos_x, int pos_y, int width, int height, int flags = SDL_WINDOW_OPENGL);
	void handle_events();
	void update();
	void draw();
	void clean();

	bool running();
	void shutdown();

	void create_world(float width, float height);
	void set_current_world(unsigned int index);

	bool load_texture(string name, string file_name);

private:
	bool is_running;
	SDL_Window* window;
	SDL_Renderer* renderer;
	vector<World> worlds;

	SDL_Texture* dot_texture;
};

