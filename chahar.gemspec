# frozen_string_literal: true

require_relative 'lib/chahar/version'

Gem::Specification.new do |spec|
  spec.name = 'chahar'
  spec.version = Chahar::VERSION
  spec.authors = ['1s22s1']
  spec.email = ['1s22s1@example.com']

  spec.summary = 'This library provides the Set class.'
  spec.description = 'This library provides the Set class.'
  spec.homepage = 'https://github.com/1s22s1/chahar'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/1s22s1/chahar'
  spec.metadata['changelog_uri'] = 'https://github.com/1s22s1/chahar/blob/main/CHANGELOG.md'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
