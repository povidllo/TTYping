#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <exception>
#include <ncurses.h>
#include <signal.h>
#include "TypingTestClass.hpp"


int main(int argc, char *argv[])
{    
    if(argc != 2) {
        throw std::runtime_error("Wrong number of arguments");
    }
    TypingTestClass type;

    type.run(10);
}
