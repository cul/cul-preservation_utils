# frozen_string_literal: true

require_relative 'lib/cul/preservation_utils/version'

Gem::Specification.new do |spec|
  # Required attributes
  spec.name = 'cul-preservation_utils'
  spec.version = Cul::PreservationUtils::VERSION
  spec.authors = ['Bradley Goldsmith']
  spec.email = ['bg2918@columbia.edu']
  spec.summary = 'Utilities related to Preservation workflows at Columbia University Library.'
  # spec.files defined below

  spec.description = 'PreservationUtils provides the FilePath module for standardizing filepaths for objects used in our Preservation services.' # rubocop:disable Layout/LineLength
  spec.homepage = 'https://github.com/cul/cul-preservation_utils'
  spec.required_ruby_version = ">= #{File.read('.ruby-version').strip}"
  spec.license = 'Apache-2.0'

  spec.metadata['homepage_uri'] = spec.homepage
  # spec.metadata['source_code_uri'] = spec.homepage
  # spec.metadata['documentation_uri'] = spec.homepage
  # spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end

  # Unicode to ASCII transliteration [https://rubygems.org/gems/stringex/]
  spec.add_dependency 'stringex', '~> 2.8', '>= 2.8.6'
end
