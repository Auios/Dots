#include "Quad_Tree.h"

template<class T>
Quad_Tree<T>::Quad_Tree(sf::Vector2f top_left, sf::Vector2f bot_right)
{
	this->region = Quad_Tree_Region(top_left, bot_right);
}

template<class T>
void Quad_Tree<T>::render(sf::RenderTarget* rt)
{
	this->region->render(rt);
}