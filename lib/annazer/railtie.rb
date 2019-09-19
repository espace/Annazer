# frozen_string_literal: true

class Annazer::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/generate_config_files.rake'
  end
end
