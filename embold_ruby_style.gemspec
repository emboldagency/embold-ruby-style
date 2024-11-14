# frozen_string_literal: true

require_relative "lib/embold_ruby_style/version"

Gem::Specification.new do |spec|
    spec.name = "embold_ruby_style"
    spec.version = EmboldRubyStyle::VERSION
    spec.authors = ["embold-tyler"]
    spec.email = ["tyler@embold.com"]

    spec.summary = "Embold style guides and shared style configs."
    spec.homepage = "https://github.com/emboldagency/embold-ruby-style"
    spec.required_ruby_version = ">= 3.0.0"

    spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/emboldagency"
    spec.metadata["github_repo"] = "git@github.com:emboldagency/embold-ruby-style.git"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
    spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"


    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
    gemspec = File.basename(__FILE__)
    spec.files = IO.popen(["git", "ls-files", "-z"], chdir: __dir__, err: IO::NULL) do |ls|
        ls.readlines("\x0", chomp: true).reject do |f|
            (f == gemspec) ||
                f.start_with?("bin/", "test/", "spec/", "features/", ".git", "appveyor", "Gemfile")
        end
    end
    spec.bindir = "exe"
    spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]

    spec.add_dependency("bundler", "~> 2.5")
    spec.add_dependency("rake", "~> 13.0")
    spec.add_dependency("rubocop", "~> 1.54")
    spec.add_dependency("rubocop-performance")
    spec.add_dependency("rubocop-rails")
    spec.add_dependency("rubocop-rake")
    # spec.add_dependency("rubocop-rspec") # uncomment if we start using RSpec
    spec.add_dependency("rubocop-shopify")

    spec.metadata["rubygems_mfa_required"] = "true"
end
