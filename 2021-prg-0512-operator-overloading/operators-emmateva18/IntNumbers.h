#pragma once
#include <iostream>
#include <string>
#include <stdexcept>

class IntNumber
{
public:
	IntNumber()
	{
		std::cout << "Constructor1: " << this << std::endl;
		this->value = 0;
	}
	IntNumber(int value)
	{
		std::cout << "Constructor2: " << this << ", " << value << std::endl;

		this->setValue(value);
	}
	IntNumber(const IntNumber& otherObject)
	{
		std::cout << "Copy Constructor: " << this << ", " << std::endl;

		this->setValue(otherObject.value);
	}
	~IntNumber()
	{
		std::cout << "Destructor: " << this << std::endl;
	}

	int operator+(IntNumber& otherNumber)
	{
		return this->value + otherNumber.value;
	}

	int operator+(int otherNumber)
	{
		return this->value + otherNumber;
	}

	int operator*(int otherNumber)
	{
		return this->value * otherNumber;
	}
	// i++
	int operator++(int notUsed)
	{
		return value++;
	}

	// ++i
	int operator++()
	{
		return ++value;
	}

	void setValue(int value)
	{
		if (value < 0)
		{
			throw std::invalid_argument("Invalid argument" + std::to_string(value));
		}
		this->value = value;

		this->value = value;
	}

	int getValue()
	{
		return this->value;
	}
private:
	int value = 0;
};