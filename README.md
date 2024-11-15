# Embold Ruby Style

Embold shared ruby style configs.

## Authentication

To install gems from the GitHub Package Repository RubyGems registry, you'll need a personal access token with the right scopes.

[Generate a personal access token (classic)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic) with at least the read:packages scope.

Ensure your `~/.bundle/config` file includes your GitHub credentials:

```bash
bundle config set --global github.com YOUR_GITHUB_USERNAME:YOUR_GITHUB_TOKEN
```

Alternatively, you can set the `BUNDLE_RUBYGEMS__PKG__GITHUB__COM` environment variable.
```bash
export BUNDLE_RUBYGEMS__PKG__GITHUB__COM=YOUR_GITHUB_USERNAME:YOUR_GITHUB_TOKEN
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
$ bundle exec embold_ruby_style
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