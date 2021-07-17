
#include <iostream>
#include <vector>
#include <string>
#include <string_view>
#include <ranges>

auto const print = [](auto const &...e) { (std::cout << ... << e); };

auto const println = [](auto const &...e) { print(e..., '\n'); };

int main() {

    auto const input = std::string("L.LL.LL.LL\nLLLLLLL.LL\nL.L.L..L..\nLLLL.LL.LL\nL.LL.LL.LL\nL.LLLLL.LL\n..L.L.....\nLLLLLLLLLL\nL.LLLLLL.L\nL.LLLLL.LL");

    auto const seats = std::ranges::split_view(input, '\n');

    for (auto const &row : seats) {
        for (auto const &seat : row) {
            print(seat);
        }
        println();
    }

    /*
    "floor", '.' 
    "empty seat", 'L'
    "occupied seat", '#'
    */

    return 0;
}

/*
L & no occupied adjacent seats -> #

# & occupied seats adjacent >= four -> L
*/

/*
applying the 
seating rules repeatedly until no seats change state. How many seats end up occupied?
*/
