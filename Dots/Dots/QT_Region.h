#pragma once

#include "SFML/System.hpp"

class QT_Region
{
private:
	sf::Vector2f top_left;
	sf::Vector2f bot_right;
public:
	QT_Region(sf::Vector2f top_left, sf::Vector2f bot_right);
};

