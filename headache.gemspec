# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'headache/version'

Gem::Specification.new do |spec|
  spec.name          = 'headache'
  spec.version       = Headache::VERSION
  spec.authors       = ['Payoff, Inc.', 'Chris Bielinski']
  spec.email         = ['engineering@payoff.com', 'cbielinski@payoff.com']
  spec.licenses      = ['MIT']
  spec.summary       = 'Take the pain out of building ACH files.'
  spec.description   = 'Take the pain out of building ACH files. Wraps the Fixy gem for building fixed-with ACH files as specified by NACHA.'
  spec.homepage      = 'https://github.com/teampayoff/headache'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'fixy', '~> 0.0'
  spec.add_dependency 'activesupport', '>= 4'
  spec.add_development_dependency 'faker', '~> 3.1'
  spec.add_development_dependency 'rspec', '~> 3.12'
  spec.add_development_dependency 'factory_girl', '~> 4.9'
  spec.add_development_dependency 'bundler', '~> 2.4'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'pry', '~> 0.14'
end
