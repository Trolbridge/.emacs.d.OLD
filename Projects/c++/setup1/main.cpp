#include <iostream>
 <string>

using namespace std;
int main() {
    cout << "Hello, World!!!" << endl;

    cout << "What is your name?" << endl;

    // read user input
    string strName;
    getline (cin, strName);
    cout << "Name: " << strName << endl;
    return 0;
}
