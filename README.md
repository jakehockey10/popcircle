# Popcircle

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/popcircle`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

First, make sure your `application.js` file includes `jquery.easing` and `jquery.popcircle`, like this:

```javascript
    //= require jquery
    //= require jquery_ujs
    //= require jquery.easing
    //= require jquery.popcircle
    //= require turbolinks
```

Second, you can include something like this in your `HTML`

```HTML
    <div class="box">
      <div class="trigger" id="circle_btn"></div>
      <div class="popcircle">
        <ul id="pops">
          <li>
            <%= link_to '' do %>
              <%= image_tag 'one.png' %>
            <% end %>
          </li>
          <li>
            <%= link_to '' do %>
              <%= image_tag 'two.png' %>
            <% end %>
          </li>
          <li>
            <%= link_to '' do %>
              <%= image_tag 'three.png' %>
            <% end %>
          </li>
          <li>
            <%= link_to '' do %>
              <%= image_tag 'four.png' %>
            <% end %>
          </li>
          <li>
            <%= link_to '' do %>
              <%= image_tag 'five.png' %>
            <% end %>
          </li>
        </ul>
      </div>
    </div>
```

Next, in your javascript, include something similar to the following:

```javascript
    $(document).on('turbolinks:load', function () {
      $('.trigger').click(function (e) {
        e.preventDefault();
        $.popcircle('#pops', {
          spacing: '10px',
          type: 'full', // full, half, quad
          offset: 1.95, // 0, 1, 2, 3, 4, 5, 6, 7, or 5.1
          ease: 'easeOutElastic',
          time: 'slow' // slow, fast, 1000
        });
      });
    });
```

For styling, you can put together something similar to this:

```css
    .box {
      width: 500px;
      height: 500px;
      float: left;
    }
    
    .trigger {
      width: 255px;
      height: 255px;
      position: relative;
      z-index: 10;
      left: 110px;
      top: 110px;
      background-image: url(<%= asset_url('big_round.png') %>);
      cursor: pointer;
    }
    
    .popcircle {
      position: relative;
      z-index: 9;
      width: 500px;
      height: 500px;
      left: 0px;
      top: -250px;
    }
    
    .popcircle ul {
      list-style: none;
      padding: 0px;
      margin: 0px;
      height: auto;
      cursor: pointer;
    }
    
    .popcircle ul li {
      top: 187.5px;
      left: 187.5px;
      height: 100px;
      width: 100px;
      position: absolute;
    }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/popcircle. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

