# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'annazer'
  s.version     = '0.0.2'
  s.date        = '2019-09-16'
  s.summary     = 'Configuration gem for RoR applications'
  s.description = 'A centralized code quality guidelines gem for all Ruby on Rails projects'
  s.authors     = ['Omar Abubakr', 'Yara Salah']
  s.email       = 'omar.abubakr@espace.com.eg'
  s.files       = ['lib/annazer.rb', 'lib/annazer/railtie.rb', 'lib/tasks/generate_config_files.rake',
                   'lib/annazer/config_files/.rubocop.yml', 'lib/annazer/config_files/.overcommit.yml',
                   'lib/annazer/config_files/.csslintrc', 'lib/annazer/config_files/.eslintignore',
                   'lib/annazer/config_files/.eslintrc.yml', 'lib/annazer/config_files/.reek.yml']

  s.homepage    = 'https://github.com/espace/annazer'
  s.license     = 'MIT'
  s.add_runtime_dependency 'rubocop', '~> 0.74.0'
  s.add_runtime_dependency 'overcommit', '~> 0.22.0'
  s.add_runtime_dependency 'brakeman', '~> 4.5.1'
  s.add_runtime_dependency 'flay', '~> 2.12.0'
  s.add_runtime_dependency 'rails_best_practices', '~> 1.19.4'
  s.add_runtime_dependency 'reek', '~> 5.4.0'
  s.add_runtime_dependency 'rubocop-performance', '~> 1.3.0'
  s.add_runtime_dependency 'strong_migrations', '~> 0.4.1'
end
