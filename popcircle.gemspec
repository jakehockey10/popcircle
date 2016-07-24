# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'popcircle/version'

Gem::Specification.new do |spec|
  spec.name          = 'popcircle'
  spec.version       = Popcircle::Rails::VERSION
  spec.authors       = ['Jake Smith']
  spec.email         = ['jakehockey10@gmail.com']

  spec.summary       = %q{Adds the popcircle jquery plugin into the rails asset pipeline.}
  spec.homepage      = 'https://github.com/jakehockey10/popcircle'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 5.0'
  spec.add_dependency 'font-awesome-rails'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
