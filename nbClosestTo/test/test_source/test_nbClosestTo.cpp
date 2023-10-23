#include <iostream>
//  @description:   The function searchs the number the closest of a number given
//  @param1:    T &numbers (int, double, float, long, array...) -> number or number
//              list In which you have to find the closest number to a given number.
//  @param2:    size of T   &numbers
//  @param3:    U closestTo -> number given
//  @return:    Return 0 (zero) if no temperatures are provided.
//              Otherwise, return the temperature closest to number given.

template <typename T, typename U>
U   nbClosestTo(const T &numbers, const size_t size, const U target)
{
    U closeTo = numbers[0]; // Initialize with the first number

    if (size == 0)
        return 0; // Return a default value if the input is empty.

    for (size_t i = 0; i < size; i++) {
        U diff1 = std::abs(numbers[i] - target);
        U diff2 = std::abs(closeTo - target);

        if (diff1 < diff2 || (diff1 == diff2 && numbers[i] > 0))
            closeTo = numbers[i];
    }

    return closeTo;
}

template <typename Container, typename T>
T nbClosestTo(const Container& numbers, const T target)
{
    if (numbers.empty())
        return T(); // Return a default value if the input is empty.

    auto it = numbers.begin();
    T closeTo = *it; // Initialize with the first number

    for (++it; it != numbers.end(); ++it) {
        T diff1 = std::abs(*it - target);
        T diff2 = std::abs(closeTo - target);

        if (diff1 < diff2 || (diff1 == diff2 && *it > 0))
            closeTo = *it;
    }

    return closeTo;
}