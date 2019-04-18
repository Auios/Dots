#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "SFML/Graphics.hpp"

#include "AppWindow.h"
#include "Dot.h"

double rnd()
{
	return ((double)rand() / (RAND_MAX));
}

int main()
{
	srand(time(NULL));

	AppWindow wnd;
	wnd.create(800, 600, "Dots!", Style::Default);

	float textSize = 200;
	
	// Start the game loop
	while (wnd.isOpen())
	{
		// Process events
		while (wnd.pollEvent())
		{
			// Close window: exit
			if (wnd.getEvent().type == Event::Closed)
				wnd.close();
		}

		// Clear screen
		wnd.clear();

		wnd.drawLine(0, 0, 200, 100);

		wnd.drawText(0, 0, "Hello world!", textSize, Color(100, 255, 100, 50));
		wnd.drawText(100, 100, "EEEEE", textSize);

		wnd.drawPoint(0, 0, Color(100, 100, 200), 10, 30);
		
		for (int i = 0; i < 0; i++)
		{
			wnd.drawPoint(wnd.getWidth() * rnd(), wnd.getHeight() * rnd(), Color(200, 100, 100), 10, 8);
		}

		// Update the window
		wnd.update();

		textSize -= 0.01f;
	}

	return EXIT_SUCCESS;
}