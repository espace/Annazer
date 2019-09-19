# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'annazer'
  s.version     = '0.0.1'
  s.date        = '2019-09-16'
  s.summary     = 'Configuration gem for RoR applications'
  s.description = 'A centralized code quality guidelines gem for all Ruby on Rails projects'
  s.authors     = ['Omar Abubakr', 'Yara Salah']
  s.email       = 'omar.abubakr@espace.com.eg'
  s.files       = ['lib/annazer.rb', 'lib/annazer/railtie.rb', 'lib/tasks/generate_config_files.rake', 'lib/annazer/config_files/.rubocop.yml', 'lib/annazer/config_files/.overcommit.yml']
  s.homepage    = 'https://github.com/espace/annazer'
  s.license     = 'MIT'
  s.add_runtime_dependency 'rubocop', '~> 0.74.0'
  s.add_runtime_dependency 'overcommit', '~> 0.22.0'
end
