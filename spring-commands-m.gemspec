# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'spring-commands-m'
  spec.version       = '1.0.1'
  spec.authors       = ['Gabriel Chaney']
  spec.email         = ['gabriel.chaney@gmail.com']

  spec.summary       = %q{m command for m.}
  spec.description   = %q{This gem implements the m command for Spring.}
  spec.homepage      = 'http://github.com/gabrieljoelc/spring-commands-m'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'spring', '>= 0.91'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
end
