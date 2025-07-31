# Embold Ruby Style

![Semantic Versioning](https://embold.net/api/github/badge/semver.php?repo=embold_ruby_style) <!--
--> [![release.yml](https://embold.net/api/github/badge/workflow-status.php?repo=embold_ruby_style&workflow=release.yml)](https://github.com/emboldagency/embold_ruby_style/actions/workflows/release.yml) <!--
--> [![ci.yml](https://embold.net/api/github/badge/workflow-status.php?repo=embold_ruby_style&workflow=ci.yml)](https://github.com/emboldagency/embold_ruby_style/actions/workflows/ci.yml)

Embold shared ruby style configs.


## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'embold_ruby_style', github: 'emboldagency/embold_ruby_style', branch: 'main'
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