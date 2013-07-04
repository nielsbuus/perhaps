# Perhaps

This a gem of a limited usefulness developed for the sole purpose of experimenting with Ruby's dynamic anarchy. It adds a global `perhaps` method (aliased as `maybe`), allowing you to write non-deterministic code easily.

## Installation

Add this line to your application's Gemfile:

    gem 'perhaps'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install perhaps

## Usage

You can now replace traditional control structures with less predictable ones.

```ruby
perhaps do
  some_object.save 
end
```

or if it looks better to you

```ruby
maybe do
  something_else.save
end
```

In both cases, the block has a 50% probability of executing.

If you want to alter that, you can add an argument

```ruby
maybe(0.8) do
  puts "This is pretty likely to happen"
end
```

and your block will have an 80% probability of executing. Filling in additional arguments, non-numeric values or any numeric values outside the (0..1) range will trigger an ArgumentError.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
