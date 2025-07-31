# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.7] - 2025-07-31
**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.2.6...v0.2.7

### Changed
- Update all repository references from `embold-ruby-style` to `embold_ruby_style` in documentation, gemspec, and badges for consistency
- Update instructions to use the GitHub repo as the source when installing the gem
- Move dev_dependencies that need to be installed in consumer repos into dependencies

## [0.2.6] - 2025-07-31
**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.2.5...v0.2.6
### Changed
- Convert CI and release workflows to shared workflows for easier reuse across gems
- Add and update GitHub Actions workflows
- Move all dependencies to development_dependencies
- Remove Bundler from development dependencies

### Added
- Add status badges to README.md
- Add ASDF .tool-versions for Ruby version management

### Fixed
- Fix GitHub Actions workflows and commands

## [0.2.5] - 2024-11-18

**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.2.4...v0.2.5

### Changed
- Added `vendor/cache` to `.gitignore` to keep the repository clean and avoid large commits.

### Fixed
- Added missed `Gemfile.lock` changes.

## [0.2.4] - 2024-11-18

**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.2.3...v0.2.4

### Changed
- Command output formatting

### Fixed
- Stub not found

## [0.2.3] - 2024-11-18

**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.2.2...v0.2.3

### Fixed
- Delegate method not available in setup command

## [0.2.2] - 2024-11-15

**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.2.1...v0.2.2

### Fixed
- Hashbang for executable should be ruby.

## [0.2.1] - 2024-11-15

**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.2.0...v0.2.1

### Fixed
- Setup script not found. Moved the setup script to the `exe` directory following Ruby gem conventions.

## [0.2.0] - 2024-11-14

**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/compare/v0.1.0...v0.2.0

### Added
- Updated bin/setup script to generate `.rubocop.yml` config

- Specified version constraints for dependencies in the gemspec

## [0.1.0] - 2024-11-14

**Full Changelog**: https://github.com/emboldagency/embold_ruby_style/commits/v0.1.0

### Added
- Initial release of `embold_ruby_style` gem.
- RuboCop extensions for performance, Rails, Rake
- Inherit from Shopify styles as a base.
- GH Actions workflow
