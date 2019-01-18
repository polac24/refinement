# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'refinement'
  spec.version       = File.read(File.expand_path('VERSION', __dir__)).strip
  spec.authors       = ['Samuel Giddins']
  spec.email         = ['segiddins@squareup.com']
  spec.homepage      = 'https://github.com/square/refinement'

  spec.summary       = 'Generates a list of Xcode targets to build & test as a result of a git diff.'

  spec.files         = Dir['*.md', 'lib/**/*', 'VERSION']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1'

  spec.add_runtime_dependency     'cocoapods', '~> 1.6.a'

  spec.add_development_dependency 'bundler', '>= 1.17', '< 3'
  spec.add_development_dependency 'rake', '~> 10.0'
end
