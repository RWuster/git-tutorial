#include <iostream>
#include <vector>


int main() {

    std::vector<int> v1(10);

    for(int i = 0; i < 10; i++){
        v1[i] = i * 10 + 100;
    }

    for(int x : v1){
        std::cout << x << " ";
    }
    std::cout << std::endl;

    return 0;
}