#include <iostream>
//#include <limits>

int main(int argc, char **argv) {
    int x{};
    std::cout << "Enter a number: ";
    std::cin >> x;
    std::cout << '\n';
    std::cout << "You entered: " << x << '\n';

    return 0;
}
