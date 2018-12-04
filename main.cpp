#include <iostream>
//#include <cstdio>

extern "C" {
    char output_str[256];
    int func(char *a, char *b);
}

int main(int argc, char** argv) {
    char input[256];
    //printf("Input string: \n");
    //scanf("%s", &input);
    std::cout << "Input string [max 255 char] :\n";
    std::cin >> input;
    func(input, output_str);
    std::cout << "Output string : " << output_str << std::endl;

    //printf("Output string: %s\n", output_str);

    return 0;
}