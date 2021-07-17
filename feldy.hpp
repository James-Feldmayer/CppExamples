
auto const print = [](auto const &...e) { (std::cout << ... << e); };

auto const println = [](auto const &...e) { print(e..., '\n'); };

//
