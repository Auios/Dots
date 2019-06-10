#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <time.h>
#include "SFML/Graphics.hpp"

#include "AppWindow.h"
#include "Graphics.h"
#include "Dot.h"

#define rnd ((float)rand() / (RAND_MAX))

void echo(string text)
{
	cout << text << endl;
}

int main()
{
	srand((unsigned int)time(NULL));

	AppWindow wnd;
	wnd.create(800, 600, "Dots!", Style::Default);

	Font terminalFont;
	if (!terminalFont.loadFromFile("terminal.ttf"))
	{
		echo("ERROR: Failed to load font");
	}

	float textSize = 200;
	
	// Start the game loop
	while (wnd.isOpen())
	{
		// Process events
		while (wnd.pollEvent())
		{
			Event* e = wnd.getEvent();
			switch (e->type)
			{
			case Event::Closed:
				// Close window: exit
				wnd.close();
				break;
			case Event::KeyPressed:
				if (e->key.code == Keyboard::Escape) wnd.close();
				break;
			case Event::Resized:
				//wnd.size.x = e->size.width;
				//wnd.size.y = e->size.height;
				wnd.setSize(e->size.width, e->size.height);
				wnd.setView(0, 0, wnd.getWidth(), wnd.getHeight());
				break;
			}
		}

		// Clear screen
		wnd.clear();

		//drawLine(&wnd, 0, 0, 200, 100);

		drawBox(&wnd, 50, 50, wnd.getWidth()-50, wnd.getHeight()-50);
		drawPoint(&wnd, 25, 25, 5, 16);

		//drawText(&wnd, 0, 0, "Hello world!", textSize, wnd.getFont());
		//drawText(&wnd, 100, 100, "EEEEE", textSize, wnd.getFont());
		//drawText(&wnd, 100, 200, "width: " + to_string(wnd.getWidth()), 100, wnd.getFont());

		//wnd.drawPoint(0, 0, Color(100, 100, 200), 10, 30);
		
		/*for (int i = 0; i < 5; i++)
		{
			drawPoint(&wnd, wnd.getWidth() * rnd, wnd.getHeight() * rnd, 8, 16);
		}*/

		// Update the window
		wnd.update();

		//textSize -= 0.01f;
	}

	return EXIT_SUCCESS;
}