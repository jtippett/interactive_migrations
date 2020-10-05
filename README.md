# InteractiveMigrations
  A gem giving you interactive migrations in your Rails project.

  If your rails project has migrations, you are prompted to run each one,
  with a printout of the code which will be run.

  You have the option of running or skipping the migration.

  Useful for production deploys where migrations are a delicate task.

  Extracted from a large production web app."

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interactive_migrations'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install interactive_migrations

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release`,
which will create a git tag for the version,
push git commits and tags,
and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/jtippett/interactive_migrations.
This project is intended to be a safe, welcoming space for collaboration,
and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/interactive_migrations/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the InteractiveMigrations project's codebases,
issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/interactive_migrations/blob/master/CODE_OF_CONDUCT.md).
