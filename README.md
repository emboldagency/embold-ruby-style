# Embold Ruby Style

Embold shared ruby style configs.

## Authentication

Ensure your `~/.bundle/config` file includes your GitHub credentials:

```bash
bundle config set --global github.com YOUR_GITHUB_USERNAME:YOUR_GITHUB_TOKEN
```

Replace `YOUR_GITHUB_USERNAME` with your GitHub username and `YOUR_GITHUB_TOKEN` with your personal access token.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  source "https://rubygems.pkg.github.com/emboldagency" do
    gem 'embold_ruby_style'
  end
end
```

And then run:

```bash
$ bundle install
```

## Setup

To create a `.rubocop.yml` file with the required configuration, run the following command in your project directory:

```bash
$ bin/em_style_setup
```

This will prompt you to initialize a `.rubocop.yml` file in the current directory with the necessary configuration to inherit the gem's RuboCop settings.

Alternatively, you can manually create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  embold_ruby_style:
    - default.yml
```

## Usage

Run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. `embold_ruby_style` will include a specific version of `rubocop` along with any required extensions.