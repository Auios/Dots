#include <stdlib.h>
#include "SFML/Graphics.hpp"

#include "Dot.h"

int main()
{
	sf::RenderWindow window(sf::VideoMode(800, 600), "Dots!");

	// Create a graphical text to display
	sf::Font font;
	if (!font.loadFromFile("arial.ttf"))
		return EXIT_FAILURE;
	sf::Text text("Hello SFML", font, 50);

	sf::Vertex line2[2] =
	{
		sf::Vertex(sf::Vector2f(50,20)),
		sf::Vertex(sf::Vector2f(100,40))
	};

	// Start the game loop
	while (window.isOpen())
	{
		// Process events
		sf::Event event;
		while (window.pollEvent(event))
		{
			// Close window: exit
			if (event.type == sf::Event::Closed)
				window.close();
		}
		// Clear screen
		window.clear();
		// Draw the string
		window.draw(text);
		window.draw(line2, 2, sf::Lines);
		// Update the window
		window.display();
	}

	return EXIT_SUCCESS;
}