#include <cstring>

#include "../source/nbClosestTo.cpp"

int main(int ac, char **av)
{
    if (ac <= 1 || av == nullptr) 
    {
        std::cout << "Need temperature list as arguments." << std::endl;
        return 1;
    }
    else
    {
        int size;
        int target;
        int index;
        int* array;

        size = ac - 1;
        target = 0;
        index = 0;
        array = new int[size];

        for (int i = 1; i <= size; i++)
            array[index++] = atoi(av[i]);

        std::cout << nbClosestTo(array, size, target) << std::endl;
        delete [] array;
    }
    return 0;
}