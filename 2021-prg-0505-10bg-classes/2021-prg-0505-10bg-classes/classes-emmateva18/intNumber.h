#pragma once

class IntNumber
{
public:
	IntNumber()
	{
		std::cout << "Creating new instance (parameterless ctor)" << std::endl;
		this->value = 0;
	}

	IntNumber(int value)
	{
		std::cout << "Creating new instance with value" << value << std::endl;
		this->value = value;
	}

	~IntNumber()
	{
		std::cout << "Destroying number" << this->value << ": " << this << std::endl;
	}

	int operator+(IntNumber otherNumber)
	{
		return this->value + otherNumber.value;
	}

	int operator*(IntNumber otherNumber)
	{
		return this->value * otherNumber.value;
	}

	int operator/(IntNumber otherNumber)
	{
		return this->value / otherNumber.value;
	}

	int operator-(IntNumber otherNumber)
	{
		return this->value - otherNumber.value;
	}

	int operator%(IntNumber otherNumber)
	{
		return this->value % otherNumber.value;
	}

	int operator>(IntNumber otherNumber)
	{
		return this->value > otherNumber.value;
	}

	int operator==(IntNumber otherNumber)
	{
		return this->value == otherNumber.value;
	}

	int operator>=(IntNumber otherNumber)
	{
		return this->value >= otherNumber.value;
	}
	
	int operator!=(IntNumber otherNumber)
	{
		return this->value != otherNumber.value;
	}

	int operator!()
	{
		return !this->value;
	}

	int setValue(int value)
	{
		return this->value = value;
	}
private:
	const int c_const = 16;
	int value;
};