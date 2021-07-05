#include "Circle.h"

void Circle::setRadius(double newRadius)
{
	radius = newRadius;
}

double Circle::getDiameter()
{
	return 2 * radius;
}

double Circle::getArea()
{
	return 3.14 * radius * radius;
}

double Circle::getCircumference()
{
	return 3.14 * 2 * radius;
}

double Circle::setRadius()
{
	return radius;
}