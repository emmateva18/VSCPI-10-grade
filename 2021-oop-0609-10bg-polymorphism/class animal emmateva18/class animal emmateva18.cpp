// class animal emmateva18.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Animal
{
public:
	void setAge(int age) { this->age = age; }
	int getAge() { return this->age; }
	virtual void makeSound() { cout << "Animal sound" << endl; }
protected:
	int age;
private:
	float weight;
};

class Cat : public Animal
{
public:
	// Method overriding
	void makeSound() { cout << "Meowww!" << endl; }
};

class Dog : public Animal
{
public:
	void makeSound() { cout << "Bau Bau!" << endl; }
};


/*  Function overloading
int sum(int a, int b) { return a + b; };
double sum(double a, double b) { return a + b; };
*/

int main()
{
	Animal* animal1 = new Animal();
	Cat* myCat = new Cat();
	Dog* myDog = new Dog();

	/* animal1->makeSound();
	myCat->makeSound();
	myDog->makeSound(); */

	/* Animal* animal2 = myCat;
	Animal* animal3 = myDog;

	animal3->makeSound(); */

	Animal* kingdom[3] = { animal1,myCat,myDog };
	for (size_t i = 0; i < 3; i++)
	{
		kingdom[i]->makeSound();
	}

}
