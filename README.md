# Chahar

This library provides the Set class.

## Installation

```console
gem install chahar
```

## Usage

```ruby
require 'chahar'

s1 = Chahar[1, 2] #=> #<Chahar: {1, 2}>
s2 = [1, 2].to_chahar #=> #<Chahar: {1, 2}>
s1 == s2 #=> true
s1.add("foo") #=> #<Chahar: {1, 2, foo}>
s1.merge([2, 6]) #=> #<Chahar: {1, 2, foo, 2, 6}>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chahar. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/chahar/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Chahar project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/chahar/blob/main/CODE_OF_CONDUCT.md).
