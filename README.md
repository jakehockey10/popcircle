# Popcircle

![Alt text](/popcircle.gif)

This gem adds `jquery.easing` and `jquery.popcircle` to your application and provides a view helper to add a radial menu with images or icons as the links surrounding the main trigger.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'popcircle', github: 'jakehockey10/popcircle'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install popcircle

## Usage

First, make sure your `application.js` file includes the following:

```javascript
//= require popcircle/popcircle
```

Second, you can include something like this in your `HTML`

```HTML
<%= popcircle(images: %w(one.png two.png three.png four.png five.png)) %>
```

## TODO

- Get helper tests back to running
- improve helper method
- allow trigger background image to be configurable
- allow size to be configurable

## Contributing

I could use some help!

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/popcircle. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

#### Note

I have begun the development of this app with integration tests in a dummy rails app inside the test folder of the gem's project.  The integration tests in this rails app should be run from the root of the project.

#### Installing

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

