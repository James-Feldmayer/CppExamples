
auto const print = [](auto const &...e) { (std::cout << ... << e); };

auto const println = [](auto const &...e) { print(e..., '\n'); };

namespace detail {
    template <typename C>
    struct to_helper {
    };
    
    template <typename Container, rng::range R>
    requires std::convertible_to<rng::range_value_t<R>, typename Container::value_type>
    Container operator|(R&& r, to_helper<Container>) {
        return Container{r.begin(), r.end()};
    }
}

template <rng::range Container>
requires (!rng::view<Container>)
auto to() {
    return detail::to_helper<Container>{};
}

// | to<std::vector<int>>()
