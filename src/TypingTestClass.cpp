#include "TypingTestClass.hpp"
#include <ctime>
#include <cstdlib>
#include <ctime>
#include <fstream>
#include <exception>
#include <sstream>



TypingTestClass::TypingTestClass() {
    initscr();
    getmaxyx(stdscr, this->col, this->row);
    std::srand(std::time({}));
    
}

TypingTestClass::~TypingTestClass() {
    if (timer_thread.joinable()) {
        timer_thread.join();
    }
    endwin();
}

void TypingTestClass::run(int n) {
    if(n < 5) {
        return;
    }
    std::string fileName = "resources/words_1000.txt";

    std::vector<std::string> allWords = openWords(fileName);

    std::vector<std::string> usingWords;

    for(int i = 0; i < n; i++) {
        int number = (std::rand() % allWords.size()) + 1;
        usingWords.push_back(allWords[number]);
    }

    init_bg();
    
    
    mvprintw(15,15, "hell0");
    setTimer(1,1,120);

    while(1) {
        getch();
    }
}

void TypingTestClass::init_bg() {
    start_color();
    init_color(8, 196, 204, 204);
    init_pair(1, COLOR_WHITE, 8);
    bkgd(COLOR_PAIR(1));
    clear();
    refresh();
}

std::vector<std::string> TypingTestClass::openWords(std::string& fileName) {
    std::ifstream file(fileName);
    if(!file.is_open()) {
        endwin();
        throw std::runtime_error("can't open file");
    }
    
    std::vector<std::string> allWords;
    std::string curWord;
    while(file >> curWord) {
        allWords.push_back(curWord);
    }

    file.close();

    return allWords;
}

void TypingTestClass::setTimer(int x, int y, int time) {
    timer_thread = std::thread([this, x, y, time]() {
        this->timerThread(x, y, time);
    });
}

void TypingTestClass::timerThread(int x, int y, int total_time) {
    auto start_time = std::chrono::steady_clock::now();
    int last_remaining = total_time;
    
    while (true) {
        auto now = std::chrono::steady_clock::now();
        auto elapsed = std::chrono::duration_cast<std::chrono::seconds>(now - start_time).count();
        int remaining = static_cast<int>(total_time - elapsed);

        if (remaining <= 0) {
            printTime(x, y, 0);
            break;
        }

        if (remaining != last_remaining) {
            printTime(x, y, remaining);
            last_remaining = remaining;
        }

        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
}

void TypingTestClass::printTime(int x, int y, int time) {
    std::lock_guard<std::mutex> lock(this->ncurses_mutex);
    int curs_state = curs_set(0);
    int old_x, old_y;
    getyx(stdscr, old_y, old_x);

    mvprintw(y, x, "Time: %02d:%02d", time / 60, time % 60);
    refresh();
    
    curs_set(curs_state);
    move(old_y, old_x);
    refresh();
    
}

// std::pair<int,int>& TypingTestClass::setWord(std::string& word, int x, int y) {
//     move(x, y);
//     size_t len = word.size();
//     if (y + len > this->col) {
//         if(x == this->row - 1) {
//             throw std::runtime_error(
//                 (std::ostringstream() << "Can't set new Word at x: " << (x + 1) << ", y: " << 0).str());
//         }
//         x += 1;
//         y = 0;
//     }
// }