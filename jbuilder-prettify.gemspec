# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'jbuilder-prettify'
  spec.version       = '0.0.1'
  spec.authors       = ['Florian Schwab']
  spec.email         = ['florian.schwab@sic-software.com']
  spec.summary       = %q{Configurable pretty output for jbuilder}
  spec.description   = %q{Configurable pretty output for jbuilder}
  spec.homepage      = 'https://github.com/SICSoftwareGmbH/jbuilder-prettify'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'railties'
  spec.add_dependency 'jbuilder'
end
