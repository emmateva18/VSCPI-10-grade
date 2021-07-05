#include "emmateva18.h"
#include <iostream>
#include <vector>
#include <string>
using namespace std;
void initGoods(vector<GOOD>&sample)
{
	sample[0] = { "Yogurt","Food",2, 15};
	sample[1] = { "Flour","Ingredient",3.5,20 };
	sample[2] = { "Milk","Bevarage",2.5,13 };
	sample[3] = { "Water","Bevarage",0.5,50 };
	sample[4] = { "Bread","Food",1.75,16 };
}
void showGood(GOOD item)
{
	cout << item.productName << ", " << item.productType << ", " << item.price << ", " << item.quantity << endl;
}
void createGood(vector<GOOD>& sample, GOOD item)
{
	sample.push_back(item);
}
GOOD enterGood()
{
	GOOD newItem;
	cin >> newItem.productName;
	cin >> newItem.productType;
	cin >> newItem.price;
	cin >> newItem.quantity;
	return newItem;
}
void showGoods(vector<GOOD>& sample)
{
	for (size_t i = 0; i < sample.size(); i++)
	{
		showGood(sample[i]);
	}
}
vector<GOOD> findGoodsByName(vector<GOOD>& sample, string productName)
{
	GOOD criteriaName;
	vector<GOOD>allCriteriaName;
	for (size_t i = 0; i < sample.size(); i++)
	{
		if (criteriaName.productName == productName)
		{
			allCriteriaName.push_back(criteriaName);
		}
	}
	return allCriteriaName;
}
vector<GOOD> findGoodsByType(vector<GOOD>& sample, string productType)
{
	GOOD criteriaType;
	vector<GOOD>allCriteriaType;
	for (size_t i = 0; i < sample.size(); i++)
	{
		if (criteriaType.productName == productType)
		{
			allCriteriaType.push_back(criteriaType);
		}
	}
	return allCriteriaType;
}
vector<GOOD> findGoodsByPrice(vector<GOOD>& sample, string productPrice)
{
	GOOD criteriaPrice;
	vector<GOOD>allCriteriaPrice;
	for (size_t i = 0; i < sample.size(); i++)
	{
		if (criteriaPrice.productName == productPrice)
		{
			allCriteriaPrice.push_back(criteriaPrice);
		}
	}
	return allCriteriaPrice;
}
int calcQuantity(vector<GOOD>& sample)
{
	int allQuantity = 0;
	for (size_t i = 0; i < sample.size(); i++)
	{
		allQuantity += sample[i].quantity;
	}
	return allQuantity;
}