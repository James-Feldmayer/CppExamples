
#include <iostream>

#include <range/v3/all.hpp>
// https://github.com/ericniebler/range-v3
// https://ericniebler.github.io/range-v3/index.html

#include <string>

auto const print = [](auto const &...e) { (std::cout << ... << e); };

auto const println = [](auto const &...e) { print(e..., '\n'); };

int main() {
  std::string s{"hello"};

  auto window = s | ranges::views::sliding(3) |
                ranges::views::drop_last(1); // [[h,e,l],[e,l,l]]

  auto end = s | ranges::views::drop(3); // [l,o]

  auto input = ranges::views::zip(window, end);

  for (auto const [l, r] : input)
    println(l, ' ', r);
}