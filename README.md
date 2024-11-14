# Embold Ruby Style

Embold shared ruby style configs.

## Installation

Add this line to your application's Gemfile:

```Gemfile
group :test, :development do
  gem 'embold_ruby_style'
end

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'embold_ruby_style'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  embold-style:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. embold_ruby_style will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.