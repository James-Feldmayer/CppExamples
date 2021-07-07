
#include <fstream>
#include <iostream>

// #include <algorithm>
// #include <ranges>

#include <range/v3/all.hpp>

#include <array>
#include <optional>
#include <utility>
#include <vector>

auto read_file() -> std::vector<int> {
  std::ifstream inFile("./AOC2020_Day9.txt");

  if (!inFile) {
    std::cerr << "Unable to open file AOC2020_Day19.txt" << '\n';
    exit(1);
  }

  std::vector<int> file_data;

  int x;

  while (inFile >> x) {
    file_data.push_back(x);
  }

  inFile.close();

  return file_data;
}

/*
auto find_conti(std::vector<int> const &search, int const target) -> int {
  for (int first = 0; first < search.size(); first++) {
    int length = 1;
    auto total = [&]() -> int {
      return std::accumulate(search.begin() + first,
                             search.begin() + first + length, 0);
    };
    for (; first + length < search.size() && total() <= target; length++) {
      if (total() == target) {
        return *std::min_element(search.begin() + first,
                                 search.begin() + first + length) +
               *std::max_element(search.begin() + first,
                                 search.begin() + first + length);
      }
    }
  }
  return std::numeric_limits<int>::min();
}
*/

template <typename R, auto lambda> struct fn_cache {
  R cache;

  template <typename... A> auto refresh(A... args) -> R {
    this->cache = lambda(args...);
    return this->cache;
  }
};

template <ranges::range Range>
auto find_addend_pair(Range const &preamble, int const sum)
    -> std::optional<std::pair<int, int>> {

  auto augend = std::ranges::find_if(preamble, [&](int const augend) {
    return preamble.end() !=
           std::ranges::find_if(preamble, [&](int const addend) {
             return addend != augend && addend == sum - augend;
           });
  });

  bool const found = augend != preamble.end();

  int const addend = sum - *augend;

  typedef std::optional<std::pair<int, int>> Return;

  return found ? Return{{*augend, addend}} : Return{};
}

template <ranges::range Range>
auto find_invalid(Range const encrypted, int const preamble_length) -> int {
  auto const preambles = encrypted | ranges::views::sliding(preamble_length) |
                         ranges::views::drop_last(1);

  auto const sums = encrypted | ranges::views::drop(preamble_length);

  auto const preambles_sums = ranges::views::zip(preambles, sums);

  auto const invalid =
      std::ranges::find_if(preambles_sums, [&](auto const preamble_sum) {
        auto const [preamble, sum] = preamble_sum;
        return !find_addend_pair(preamble, sum).has_value();
      });

  return (*invalid).second;
}

auto const print = [](auto const &...e) { (std::cout << ... << e); };

auto const println = [](auto const &...e) { print(e..., '\n'); };

/*
clean up the cmake stuff

add auto push to git on save to keep it all backed up

add tl::expected next
*/

int main() {

  // example 1
  /*
  constexpr std::array encrypted = {35,  20,  15,  25,  47,  40,  62,
                                    55,  65,  95,  102, 117, 150, 182,
                                    127, 219, 299, 277, 309, 576};

  constexpr int preamble_length = 5;
  */

  // example 2
  std::vector<int> const encrypted = read_file();

  constexpr int preamble_length = 25;

  println(find_invalid(encrypted, preamble_length));
}