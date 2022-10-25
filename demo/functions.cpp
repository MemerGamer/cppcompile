#include "functions.h"

void printArgs(int n, char** arguments){
    std::cout << "Program arguments are: ";
    for(int i=1; i<n-1; ++i){
        std::cout << "'" << arguments[i] << "', ";
    }
    std::cout << "'" << arguments[n-1] << "'." << std::endl;
}
