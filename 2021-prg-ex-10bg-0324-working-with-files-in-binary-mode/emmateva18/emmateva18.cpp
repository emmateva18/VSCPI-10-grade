#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;

bool writeArrayInFile(int* arr, int sizeInBytes)
{
    fstream file("array.bin", ios::out | ios::binary | ios::trunc);
    if (file.is_open())
    {
        if (file.write((const char*)arr, sizeInBytes))
        {
            return true;
        }
    }

    return false;
}

size_t getCount()
{
    ifstream file("array.bin", ios::in | ios::binary);

    if (file.is_open())
    {
        file.seekg(0, ios::end);
        size_t size = file.tellg();

        return size / sizeof(int);
    }
    return (size_t)-1;
}

bool readArrayFromFile(vector<int>& items)
{
    ifstream file("array.bin", ios::in | ios::binary);
    int get = 0;

    if (file.is_open())
    {
        size_t size = getCount() * sizeof(int);

        while (!file.eof())
        {
            if (file.read((char*)&get, sizeof(int)))
            {
                items.push_back(get);
            }
        }
        return true;
    }
    return false;
}

size_t getFileSize()
{
    ifstream file("array.bin", ios::in | ios::binary);
    if (file.is_open())
    {
        file.seekg(0, ios::out);
        return file.tellg();
    }
    return (size_t)-1;
}

int main()
{
    int arr[6] = { 1,2,3,4,5,6 };
    if (writeArrayInFile(arr, sizeof(arr)))
    {
        size_t size = getFileSize();
        if (size != (size_t)-1)
        {
            cout << "File size " << size << " bytes" << endl;
        }
        else
        {
            cout << "Error getting file size" << endl;
        }
    }
}
