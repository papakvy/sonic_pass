# frozen_string_literal: true

require 'pry'
require_relative 'lib/sonic_pass/version'

Gem::Specification.new do |spec|
  spec.name = 'sonic_pass'
  spec.version = SonicPass::VERSION
  spec.authors = ['papakvy']
  spec.email = ['tamphubkdn@gmail.com']

  spec.summary = 'A fast strong password generator'
  spec.description = 'Generate strong passwords quickly and easily.'
  spec.homepage = 'https://github.com/papakvy/sonic_pass'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  # spec.metadata['allowed_push_host'] = ''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/papakvy/sonic_pass'
  spec.metadata['changelog_uri'] = 'https://github.com/papakvy/sonic_pass'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir["lib/**/*", "bin/*"]
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = 'bin'

  # binding.pry

  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency 'clipboard'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
