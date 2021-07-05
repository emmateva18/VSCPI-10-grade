#pragma once
#include <iostream>
#include <vector>
#include <string>
struct GOOD {
	std::string productName;
	std::string productType;
	float price;
	int quantity;
};
void initGoods(vector<GOOD>&sample);
void showGood(GOOD item);
void createGood(vector<GOOD>& sample, GOOD item);
GOOD enterGood();
void showGoods(vector<GOOD>& sample);
vector<GOOD> findGoodsByName(vector<GOOD>& sample,string productName);
vector<GOOD> findGoodsByType(vector<GOOD>& sample, string productType);
vector<GOOD> findGoodsByPrice(vector<GOOD>& sample, string productPrice);
int calcQuantity(vector<GOOD>& sample);