#pragma once
#include <cstdio>
#include <cstdlib>
#include <ncurses.h>
#include <csignal>
#include <string>
#include <vector>
#include <thread>
#include <mutex>

class TypingTestClass
{
private:
    int row;
    int col;
    void init_bg();
    std::mutex ncurses_mutex;
    std::thread timer_thread;

    std::vector<std::string> openWords(std::string& fileName);
    // std::pair<int,int>& setWord(std::string& word, int x, int y);
    void setTimer(int x, int y, int time);
    void timerThread(int x, int y, int time);
    void printTime(int x, int y, int time);
public:
    TypingTestClass();
    ~TypingTestClass();
    void run(int n);


};
