# Embold Ruby Style

Embold shared ruby style configs.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  source "https://rubygems.pkg.github.com/emboldagency" do
    gem 'embold_ruby_style'
  end
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'embold_ruby_style'
```

And then run:

```bash
$ bundle install
```

## Authentication

Ensure your `~/.bundle/config` file includes your GitHub credentials:

```bash
bundle config set --global github.com YOUR_GITHUB_USERNAME:YOUR_GITHUB_TOKEN
```

Replace `YOUR_GITHUB_USERNAME` with your GitHub username and `YOUR_GITHUB_TOKEN` with your personal access token.

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  embold_ruby_style:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. `embold_ruby_style` will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.