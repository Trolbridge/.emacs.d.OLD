#include <iostream>
//#include <limits>

int main(int argc, char **argv) {
    std::cout << "Hello BB!" << '\n';
    std::string bb {"Hello World !"};

    std::cout << bb << '\n';
//    std::cin.clear(); // reset any error flags
//    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); // ignore any characters in the input buffer until we find a new line
//    std::cin.get();
    return 0;
}
