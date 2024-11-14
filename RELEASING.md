# Releasing

1. Update `version.rb` file accordingly.
1. Tag the release: `git tag v{VERSION}`
1. Push changes: `git push --tags`
1. Update the release notes on GitHub.com

## Publishing to GitHub RubyGems Registry

The publishing process is automated using GitHub Actions. When a new tag is pushed, the GitHub Actions workflow will automatically build and publish the gem to the GitHub Package Registry.

### Manual Trigger

You can also manually trigger the GitHub Actions workflow from the "Actions" tab in your GitHub repository.

## Authentication

GitHub Actions automatically creates a `GITHUB_TOKEN` secret for you, which is used for authentication within workflows. No additional setup is required.

## Announcing the Release

* Announce the new release,
   making sure to say "thank you" to the contributors
   who helped shape this version!

## Using GitHub Packages as Dependencies in Bundler

1. **Add GitHub Packages source to your Gemfile**:
   Add the following lines to your `Gemfile`:

   ```ruby
   source "https://rubygems.pkg.github.com/emboldagency" do
     gem "embold_ruby_style"
   end
   ```

2. **Authenticate with GitHub Packages**:
   Ensure your `~/.bundle/config` file includes your GitHub credentials:

   ```bash
   bundle config set --global github.com YOUR_GITHUB_USERNAME:YOUR_GITHUB_TOKEN
   ```

3. **Install dependencies**:
   Run `bundle install` to install the gem from GitHub Packages.

   ```bash
   bundle install
   ```

By following these steps, you can publish your gem to the GitHub RubyGems registry and use packages stored on GitHub Packages as dependencies in your Ruby project with Bundler.