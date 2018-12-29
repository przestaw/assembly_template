#include <iostream>
//#include <cstdio>

extern "C" {
    int func(char *a, char *b);
}

char output_str[256];
char input[256];

int main() {

    std::cout << "Input string [max 255 char] :\n";
    std::cin >> input;
    func(input, output_str);
    std::cout << "Output string : " << output_str << std::endl;

    return 0;
}