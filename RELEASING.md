# Releasing

1. Update `version.rb` file accordingly.
1. Tag the release: `git tag v{VERSION}`
1. Push changes: `git push --tags`
1. Update the release notes on GitHub.com
1. Build and publish:

```bash
bundle exec rake build
gem push --key github --host https://rubygems.pkg.github.com/emboldagency pkg/embold_ruby_style-X.XX.XX.gem
```

* Announce the new release,
   making sure to say "thank you" to the contributors
   who helped shape this version!

## Publishing to GitHub RubyGems Registry

1. **Authenticate with GitHub Packages**:
   Create a personal access token with the `write:packages` and `read:packages` scopes. Save this token securely.

   You can also use gh cli to get your current oauth token if you have the correct permissions already.
   
   ```bash
   gh auth token
   ```

2. **Add GitHub as a gem source**:
   Add the following lines to your `~/.gem/credentials` file (create the file if it doesn't exist):

   ```yaml
   ---
   :github: Bearer YOUR_GITHUB_TOKEN
   ```

   Ensure the file has the correct permissions:

   ```bash
   chmod 0600 ~/.gem/credentials
   ```

3. **Update your gemspec**:
   Ensure your gemspec includes the GitHub Packages host:

   ```ruby
   spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/emboldagency"
   ```

4. **Build and push your gem**:
   Run the following commands to build and push your gem:

   ```bash
   bundle exec rake build
   gem push --key github --host https://rubygems.pkg.github.com/emboldagency pkg/embold_ruby_style-X.XX.XX.gem
   ```

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