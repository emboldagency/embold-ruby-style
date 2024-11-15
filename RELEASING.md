# Releasing

1. Update [version.rb](lib/embold_ruby_style/version.rb) file accordingly.
1. Update [CHANGELOG.md](CHANGELOG.md)
1. Tag the release: `git tag v{VERSION}`
1. Push changes: `git push --tags`

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
