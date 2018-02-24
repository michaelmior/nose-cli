Gem::Specification.new do |s|
  s.name        = 'nose-cli'
  s.version     = '0.1.5'
  s.license     = 'GPL-3.0'
  s.summary     = 'Schema design for NoSQL applications'
  s.author      = 'Michael Mior'
  s.email       = 'mmior@uwaterloo.ca'
  s.files       = Dir['lib/**/*'] +
                  Dir['templates/*'] +
                  Dir['data/**/*'] +
                  Dir['bin/*']
  s.bindir      = 'bin'
  s.executables = ['nose']
  s.homepage    = 'https://michael.mior.ca/projects/NoSE/'

  s.add_dependency 'ansi-to-html', '~> 0.0.3'
  s.add_dependency 'descriptive_statistics', '~> 2.5.1', '>= 2.5.0'
  s.add_dependency 'gruff', '~> 0.7.0'
  s.add_dependency 'nose', '~> 0.1.1'
  s.add_dependency 'representable', '= 3.0.0'
  s.add_dependency 'table_print', '~> 1.5.6', '>= 1.5.0'
  s.add_dependency 'thor', '~> 0.19.4'

  s.add_development_dependency 'aruba', '~> 0.14.2'
  s.add_development_dependency 'binding_of_caller', '~> 0.7.2'
  s.add_development_dependency 'fakefs', '~> 0.11.0'
  s.add_development_dependency 'pry-nav'
  s.add_development_dependency 'pry-rescue'
  s.add_development_dependency 'rspec', '~> 3.6.0', '>= 3.5.0'
  s.add_development_dependency 'rspec-core', '~> 3.6.0', '>= 3.6.0'
  s.add_development_dependency 'rspec-collection_matchers', '~> 1.1.3', '>= 1.1.0'
  s.add_development_dependency 'scrutinizer-ocular', '~> 1.0.1', '>= 1.0.0'
  s.add_development_dependency 'simplecov', '~> 0.14.1'
end
