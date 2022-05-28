<<<<<<< HEAD
#include <boost/filesystem/operations.hpp>
#include <iostream>

int main(int argc, char *argv[]) {
    std::cout << "The size of " << boost::filesystem::absolute(argv[0])
              << " is " << boost::filesystem::file_size(argv[0]) << '\n';
=======
#include <iostream>

int main(int argc, char *argv[]) {
	std::cout << "Hello World!";
>>>>>>> fbd2a9a788c560f71c016c8dea0ecc92e615e7e8
    return 0;
}
