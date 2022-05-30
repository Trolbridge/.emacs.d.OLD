#include <iostream>

#include "my_lib.h"
#include "config.hpp"

int main() {

    std::cout << '\n';
    std::cout << project_name << '\n';
    std::cout << project_version << '\n';
    std::cout << '\n';

    print_hello_world();
    std::cout << '\n';

    return 0;
}
