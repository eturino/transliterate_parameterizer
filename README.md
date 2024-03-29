# TransliterateParameterizer

[![Gem Version](https://badge.fury.io/rb/transliterate_parameterizer.svg)](http://badge.fury.io/rb/transliterate_parameterizer)
[![Build Status](https://travis-ci.org/eturino/transliterate_parameterizer.svg?branch=master)](https://travis-ci.org/eturino/transliterate_parameterizer)
[![Code Climate](https://codeclimate.com/github/eturino/transliterate_parameterizer.png)](https://codeclimate.com/github/eturino/transliterate_parameterizer)
[![Code Climate Coverage](https://codeclimate.com/github/eturino/transliterate_parameterizer/coverage.png)](https://codeclimate.com/github/eturino/transliterate_parameterizer)


Basic utility to transliterate and parameterize strings, based on ActiveSupport.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'transliterate_parameterizer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install transliterate_parameterizer

## Usage

Call the `parameterize` method in the `TransliterateParameterizer` module, passing the text as parameter.

```ruby
text = "I'm He-Man!"
TransliterateParameterizer.parameterize text # => "i-m-he-man"
```

By default, any underscore (_) will be modified to a dash (-). You can disable this behaviour by passing false a 2nd parameter.

```ruby
text = "I'm He_Man!"
TransliterateParameterizer.parameterize text # => "i-m-he-man"


text = "I'm He_Man!"
TransliterateParameterizer.parameterize text, false # => "i-m-he_man"
```

The text will be transliterated using `ActiveSupport::Inflector.transliterate` before being parameterized.

```ruby
text = "Hoy no, mejor mañana"
TransliterateParameterizer.parameterize text # => "hoy-no-mejor-manana"
```

## Contributing

1. Fork it ( https://github.com/eturino/transliterate_parameterizer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
